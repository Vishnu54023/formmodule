package mycomplexform.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController1 {
	
	@RequestMapping("/home")
	public String home() {
		
		System.out.println("Home page");
		return "home";
	}
	
	@RequestMapping(path="/myserver", method = RequestMethod.POST)
	public String handler(@ModelAttribute("user") User user, BindingResult result) {
		
		if(result.hasErrors()) {
			
			return "home";
		}
		
		
		System.out.println(user);
		
		
		return "success";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
