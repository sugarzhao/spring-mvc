package com.framework.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.dao.IUserDao;
import com.framework.domain.User;
import com.framework.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	IUserDao userDao;
	
	public UserServiceImpl() {
		System.out.println("UserServiceImpl");
	}
	
	public User getUserById(int id) {
		return userDao.selectByPrimaryKey(id);
	}

}
