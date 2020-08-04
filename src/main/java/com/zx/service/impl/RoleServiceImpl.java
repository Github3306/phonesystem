package com.zx.service.impl;

import com.zx.dao.RoleDao;
import com.zx.entity.Role;
import com.zx.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {
	
	@Autowired
	private RoleDao roleDao;

	@Override
	public List<Role> getRoleList() {
		// TODO Auto-generated method stub
		return roleDao.queryRoleList();
	}

}
