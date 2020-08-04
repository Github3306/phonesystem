package com.zx.service;

import com.zx.entity.Role;

import java.util.List;

public interface RoleService {
	/**
	 * 得到角色信息
	 * @return
	 */
	List<Role> getRoleList();
	
}
