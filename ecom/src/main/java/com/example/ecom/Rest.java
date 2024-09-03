package com.example.ecom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;



@Controller
public class Rest {
	StudentDAOClass sdc;
	ProductDAOClass pdc;
	


	@Autowired
	public Rest(StudentDAOClass sdc,ProductDAOClass pdc) {
		super();
		this.sdc = sdc;
		this.pdc =pdc;
	}
	
	@GetMapping("/login")
	public String form(Model model)
	{
		model.addAttribute("stud1",new Student());
		return "login";
	}
	@PostMapping("/home")
	public String register(@ModelAttribute("stud2") Student stud2)
	{
		sdc.insertStudent(stud2);
		return "home";
	}
	@PostMapping("/login_process")
	public String login_process(@ModelAttribute("stud") Student stud)
	{
		int x=sdc.getStudent(stud);
		if(x==1)
		{
			return "home";
		}
		else return "login";
	}
	@GetMapping("/")
	public String loginhome()
	{
		return "loginhome";
	}
	@GetMapping("/home")
	public String home()
	{
		return "home";
	}

	@GetMapping("/loginpopup")
	public String loginpopup()
	{
		return "loginpopup";
	}
	@GetMapping("/contact")
	public String contact()
	{
		return "contact";
	}
	@GetMapping("/products")
	public String products()
	{
		return "products";
	}
	@GetMapping("/aboutus")
	public String aboutus()
	{
		return "about";
	}
	@GetMapping("/nordce3")
	public String nordce3()
	{
		return "nordce3";
	}
	@GetMapping("/ideapad3")
	public String ideapad3()
	{
		return "ideapad3";
	}
	@GetMapping("/motorola4")
	public String motorola4()
	{
		return "motorola4";
	}
	@GetMapping("/oppoenco2")
	public String oppoenco2()
	{
		return "oppoenco2";
	}
	@GetMapping("/samsungwatch6")
	public String samsungwatch6()
	{
		return "samsungwatch6";
	}
	@GetMapping("/wings340")
	public String wings340()
	{
		return "wings340";
	}
	
	@GetMapping("/productdetails")
	public String productdetails()
	{
		return "productdetails";
	}
	
}
