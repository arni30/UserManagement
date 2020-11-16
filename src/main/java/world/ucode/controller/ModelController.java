package world.ucode.controller;

import com.sun.org.apache.xerces.internal.util.SymbolHash;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import world.ucode.models.User;
import world.ucode.services.UserService;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.List;

@Controller
@ControllerAdvice
public class ModelController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = context.getBean("userService", UserService.class);
        List<User> lst = userService.findAllUsers();
        model.addAttribute("Users", lst);
        System.out.println("get");
        return "mainPage";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String signup_post(User user, ModelMap model) {
        database(user);
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = context.getBean("userService", UserService.class);
        List<User> lst = userService.findAllUsers();
        System.out.println(lst.get(0).getFirstName());
        System.out.println("hallo");
        model.addAttribute("Users", lst);
        return "redirect:/";
    }
    @RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
    public String deleteUser(User user, ModelMap model) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = context.getBean("userService", UserService.class);
        userService.deleteUser(user.getId());
        List<User> lst = userService.findAllUsers();
        model.addAttribute("Users", lst);
        return "redirect:/";
    }
    @RequestMapping(value = "/editUser", method = RequestMethod.POST)
    public String edit(User user, ModelMap model) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = context.getBean("userService", UserService.class);
        userService.updateUser(user);
        List<User> lst = userService.findAllUsers();
        model.addAttribute("Users", lst);
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