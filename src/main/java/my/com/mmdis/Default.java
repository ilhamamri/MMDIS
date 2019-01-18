package my.com.mmdis;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Firdhaus
 */
@Controller
public class Default {
    @RequestMapping(value={"*", "/", "/home"})
    public String menuhome(HttpServletRequest request, ModelMap model) {
        model.addAttribute("title", "Home");
        return "views/security/login";
    }
    
}
