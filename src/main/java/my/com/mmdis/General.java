/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my.com.mmdis;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Firdhaus
 */
@Controller
@RequestMapping("general")
public class General {
    
    @RequestMapping("/survey")
    public String Home(ModelMap model) {
        model.addAttribute("title", "Survey Form");
        return "general/survey";
    }
    
    @RequestMapping("/survey/dummy")
    public String Dummy(ModelMap model) {
        model.addAttribute("title", "Survey Form");
        return "general/survey_dummy";
    }
    
    @RequestMapping("/checkout")
    public String Payment(ModelMap model) {
        model.addAttribute("title", "Payment Checkout");
        return "general/checkout";
    }
    
    @RequestMapping("/map")
    public String Map(ModelMap model) {
        model.addAttribute("title", "Google Map");
        return "general/map";
    }
    
}
