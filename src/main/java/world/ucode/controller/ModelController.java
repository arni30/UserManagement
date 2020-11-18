package world.ucode.controller;

import jakarta.validation.*;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import world.ucode.models.User;
import world.ucode.services.UserService;
import world.ucode.validation.UserValidation;
import java.util.List;

@Controller
@ControllerAdvice
public class ModelController {
    final private UserValidation validation = new UserValidation();
    final private ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    final private UserService userService = context.getBean("userService", UserService.class);
    final private ModelAndView modelAndView = new ModelAndView();

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() {
        context.start();
    try {
                setUsersListAttribute();
    } catch (Exception ignored){}
        modelAndView.setViewName("mainPage");
        return modelAndView;
    }
    @RequestMapping(value = "/add", method = RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public ModelAndView signup_post(@Valid User user) {
        if (validation.isValid(user)) {
            context.start();
            userService.saveUser(user);
            setUsersListAttribute();
        }
        return modelAndView;
    }
    @RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
    public ModelAndView deleteUser(User user) {
        context.start();
        userService.deleteUser(user.getId());
        setUsersListAttribute();
        return modelAndView;
    }
    @RequestMapping(value = "/editUser", method = RequestMethod.POST)
    public ModelAndView edit(User user, ModelMap model) {
        if (validation.isValid(user)) {
            context.start();
            userService.updateUser(user);
            setUsersListAttribute();
        }
        return modelAndView;
    }

    @RequestMapping(value = "/errors/404", method = RequestMethod.GET)
    public String error404() {
        return "/errors/404";
    }

    public void setUsersListAttribute() {
        List<User> lst = userService.findAllUsers();
        modelAndView.addObject("Users", lst);
        modelAndView.setViewName("redirect:/");
        context.close();
    }

}