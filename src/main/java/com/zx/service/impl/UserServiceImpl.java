package com.zx.service.impl;

import com.zx.dao.RoleDao;
import com.zx.dao.UserDao;
import com.zx.dto.TExecution;
import com.zx.entity.Role;
import com.zx.entity.User;
import com.zx.service.UserService;
import com.zx.util.MD5;
import com.zx.util.PageCalculator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private RoleDao roleDao;

	@Override
	public int checkRegisterUserByAccount(String account) {
		// TODO Auto-generated method stub
		return userDao.registerCheckUserAccount(account);
	}
	
	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		//设置默认密码(MD5加密)
		user.setPassword(MD5.getMd5("111111"));
		//建立时间
		user.setUpdateTime(new Date());
		//根据ID得到角色名
		long roleId = user.getRole().getRoleId();
		Role currentRole= roleDao.queryRoleById(roleId);
		//存放角色名
		user.setRoleName(currentRole.getRoleName());
		return userDao.insertUser(user);
	}

	@Override
	public int removeUser(long userId) {
		// TODO Auto-generated method stub
		return userDao.deleteUserById(userId);
	}

	@Override
	public User checkLoginInfo(String account, String password) {
		// TODO Auto-generated method stub
		String MDPassword = MD5.getMd5(password);
		return userDao.checkLoginInfo(account, MDPassword);
	}
	
	@Override
	public TExecution<User> getUserList(User userCondition, int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		int rowIndex = PageCalculator.calculatorRowIndex(pageIndex, pageSize);
		List<User> userList = userDao.queryUserList(userCondition, rowIndex, pageSize);
		int count = userDao.queryUserCount(userCondition);
		TExecution<User> userExecution = new TExecution<>();
		if (userList!=null) {
			userExecution.setData(userList);
			userExecution.setCount(count);
			userExecution.setStateInfo("成功得到数据");
		}else {
			return new TExecution<User>("数据获取失败");
		}
		return userExecution;
	}

	@Override
	public int modifyPasswordById(long userId, String account, String password, String newPassword) {
		// TODO Auto-generated method stub
		return userDao.updatePasswordById(userId, account, password, newPassword, new Date());
	}

}
