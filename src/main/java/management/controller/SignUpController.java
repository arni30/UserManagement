package management.controller;

import management.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SignUpController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String mainPage(ModelMap model) {
        model.addAttribute("form", new User());
        return "authorization";
    }
    @RequestMapping(value = "/", method = RequestMethod.POST)
    public void mainPage(@ModelAttribute("form") User user, ModelAndView model) {
        System.out.println(user.getRole());
    }
//    @RequestMapping(value = "/", method = RequestMethod.GET)
//    public void mp(ModelMap model) {
//        System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
//
//    }
}
