package com.zx.dao;

import com.zx.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface UserDao {

	/*--------------------------------------------------用户管理----------------------------------------------------*/
	/**
	 * 添加用户
	 * @param user
	 * @return
	 */
	int insertUser(User user);
	/**
	 * 根据ID删除用户
	 * @param userId
	 * @return
	 */
	int deleteUserById(long userId);
	/**
	 * 更新用户信息（user.Employee）
	 * @param user
	 * @return
	 */
	int updateUser(User user);
	/**
	 * 分页条件查询所有用户（用户账号，用户角色）实体为空查询所有
	 * @param rowIndex
	 * @param pageSize
	 * @return
	 */
	List<User> queryUserList(@Param("user") User user, @Param("rowIndex") int rowIndex, @Param("pageSize") int pageSize);
	/**
	 * 查询所有用户数量
	 * @return
	 */
	int queryUserCount(@Param("user") User user);
	/**
	 * 修改用户密码
	 * @param userId
	 * @param account
	 * @param password
	 * @param newPassword
	 * @param updateTime
	 * @return
	 */
	int updatePasswordById(@Param("userId") long userId, @Param("account") String account, @Param("password") String password, @Param("newPassword") String newPassword, @Param("updateTime") Date updateTime);
	/**
	 * 登录验证
	 * @param account
	 * @param password
	 * @return
	 */
	User checkLoginInfo(@Param("account") String account, @Param("password") String password);
	/**
	 * 查询账户是否已经存在
	 * @param account
	 * @return
	 */
	int registerCheckUserAccount(@Param("account") String account);
}
