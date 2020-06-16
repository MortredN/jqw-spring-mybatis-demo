package com.example.jqwspringbatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.jqwspringbatis.mapper.UserMapper;
import com.example.jqwspringbatis.model.User;

@RestController
@RequestMapping("/")
public class JqwSpringBatisController {
	
	@Autowired
	UserMapper userMapper;
	
	@RequestMapping(method = RequestMethod.GET)
	public String grid(ModelMap model) {
		return "grid";
	}
	
	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public List<User> getUsers() {
		return userMapper.getUsers();
	}
	
	@RequestMapping(value = "/users", method = RequestMethod.POST)
	public String createUser(@RequestBody User user) {
		userMapper.createUser(user);
		return "Successfully added User: " + user.toString();
	}
}
