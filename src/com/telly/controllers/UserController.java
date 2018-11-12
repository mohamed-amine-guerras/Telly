package com.telly.controllers;





@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@Autowired
	ReserveService reserveService;

	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}
	
	@RequestMapping("/loggedout")
	public String showLogout() {
		return "loggedout";
	}
	
	

}



