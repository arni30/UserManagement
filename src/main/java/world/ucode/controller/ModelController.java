package world.ucode.controller;

import com.sun.org.apache.xerces.internal.util.SymbolHash;
import jakarta.validation.*;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import world.ucode.models.User;
import world.ucode.services.UserService;
import world.ucode.validation.UserValidation;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

@Controller
@ControllerAdvice
public class ModelController {
    final private UserValidation validation = new UserValidation();
    final private ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    final private UserService userService = context.getBean("userService", UserService.class);
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = context.getBean("userService", UserService.class);
        List<User> lst = userService.findAllUsers();
        model.addAttribute("Users", lst);
        return "mainPage";
    }
    @RequestMapping(value = "/add", method = RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public ModelAndView signup_post(@Valid User user) {
        if (!validation.isValid(user)) {
            System.out.println("invalid");
        }
        context.start();
        ModelAndView model = new ModelAndView();
        database(user);

        List<User> lst = userService.findAllUsers();
        model.addObject("Users", lst);
        model.setViewName("redirect:/");
        context.close();
        return model;
    }
    @RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
    public String deleteUser(User user, ModelMap model) {
//        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
//        UserService userService = context.getBean("userService", UserService.class);
        context.start();
        userService.deleteUser(user.getId());
        List<User> lst = userService.findAllUsers();
        model.addAttribute("Users", lst);
        context.close();
        return "redirect:/";
    }
    @RequestMapping(value = "/editUser", method = RequestMethod.POST)
    public String edit(User user, ModelMap model) {
        context.start();
//        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
//        UserService userService = context.getBean("userService", UserService.class);
        userService.updateUser(user);
        List<User> lst = userService.findAllUsers();
        model.addAttribute("Users", lst);
        context.close();
        return "redirect:/";
    }


    // -----------------------
    @RequestMapping(value = "/errors/404", method = RequestMethod.GET)
    public String error404() {
        return "/errors/404";
    }

    @RequestMapping(value = "/errors/error", method = RequestMethod.GET)
    public String exceptions() {
        return "/errors/error";
    }


    private void database(User user) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = context.getBean("userService", UserService.class);

        userService.saveUser(user);
//        userService.updateUser(user);
        context.close();
    }
}