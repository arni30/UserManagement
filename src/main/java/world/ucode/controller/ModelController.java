package world.ucode.controller;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import world.ucode.models.User;
import world.ucode.services.UserService;

import java.util.List;

@Controller
@ControllerAdvice
public class ModelController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "/signin";
    }

    @RequestMapping(value = "/signin", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody public List<User> signin(ModelMap model) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = context.getBean("userService", UserService.class);
        return userService.findAllUsers();
    }

    @RequestMapping(value = "/signin", method = RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public void signup_post(User user, ModelMap model) {
        System.out.println(user.getFirstName());
        database(user);

//        System.out.println(usr.getPassword());
//        System.out.println(usr.getConfirmpassword());
//        System.out.println(usr.getEmail());
//        System.out.println(usr.getUsername());
//        System.out.println("hallo");
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

        userService.updateUser(user);
        context.close();
    }
}