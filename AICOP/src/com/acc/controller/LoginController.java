package com.acc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import com.acc.bean.UserBean;
import com.acc.delegate.LoginDelegate;
import com.acc.form.LoginForm;

@Controller
public class LoginController {
	final static Logger logger = Logger.getLogger(LoginController.class);
	private LoginDelegate loginDelegate;
		
public void setLoginDelegate(LoginDelegate loginDelegate) {
		this.loginDelegate = loginDelegate;
	}

@RequestMapping( value = "/authenticate.do",method=RequestMethod.POST)
public ModelAndView registerUser(@ModelAttribute("loginForm")LoginForm loginForm ,HttpServletRequest request,HttpServletResponse response){
	logger.debug("Into controller-->"+loginForm.getUserId());
	ModelAndView mav = new ModelAndView();
	UserBean userBean = new UserBean();
	userBean.setUserId(loginForm.getUserId());
	userBean.setPassword(loginForm.getPassword());
	boolean flag = loginDelegate.authenticateUser(userBean);
	
	if(flag) {
	mav.addObject("result", "Authenticated Successfully");
	mav.setViewName("index");
	}
	else {
		mav.addObject("errorMsg","Incorrect UserId/Password");
		mav.setViewName("login");
	}
	return mav;
		}
}
