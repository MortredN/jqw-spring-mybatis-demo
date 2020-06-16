package com.example.jqwspringbatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@RequestMapping(value = "/users", method = RequestMethod.POST, headers = { "content-type=application/json" }, consumes = MediaType.APPLICATION_JSON_VALUE)
	public String createUser(@RequestBody User user) {
		userMapper.createUser(user);
		return "Successfully added User: " + user.toString();
	}
	
	@RequestMapping(value = "/users/{ids}", method = RequestMethod.PUT, headers = { "content-type=application/json" }, consumes = MediaType.APPLICATION_JSON_VALUE)
	public String updateUser(@PathVariable String ids, @RequestBody User user) {
		userMapper.updateUser(ids, user);
		return "Successfully updated User ID ( " + ids + " )";
	}
	
	@RequestMapping(value = "/users/{ids}", method = RequestMethod.DELETE)
	public String deleteUser(@PathVariable String ids) {
		userMapper.deleteUser(ids);
		return "Successfully deleted User ID ( " + ids + " )";
	}
}
