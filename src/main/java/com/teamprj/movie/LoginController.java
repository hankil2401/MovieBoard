package com.teamprj.movie;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value="/login")
public class LoginController {	
	
	@Autowired
	UserServiceImpl service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	@RequestMapping(value = "/loginok", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, UserVO vo) {
		if(session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		UserVO loginvo = service.getUser(vo);
		if(loginvo != null) {
			session.setAttribute("login", loginvo);
			System.out.println("로그인 성공! ");
			return "redirect:/movie/list";
		}
		else {
			System.out.println("로그인 실페!!!");
			return "redirect:/login/login";
		}
	}
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";
	}
}
