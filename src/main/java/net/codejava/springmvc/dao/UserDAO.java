package net.codejava.springmvc.dao;

import java.util.List;

import net.codejava.springmvc.model.User;

public interface UserDAO {

	public List<User> list();

	public User get(int id);

	public void saveOrUpdate(User user);

	public void delete(int id);

}
