package com.acc.service.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.bean.UserBean;
import com.acc.dao.LoginDao;
import com.acc.service.LoginService;

@Service(value="loginService")
public class LoginServiceImpl implements LoginService{

	@Resource(name="loginService")
	private LoginService loginService;
	
	/*@Autowired
	private LoginDao loginDao;
	*/
	
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}


	
	@Override
	public boolean authenticateUser(UserBean userBean) {
		System.out.println("In service");
		//loginDao.getUserForUserId(userBean);
		if(userBean.getUserId().equalsIgnoreCase(userBean.getPassword())) {
			return true;
		}
		return false;
	}

}
