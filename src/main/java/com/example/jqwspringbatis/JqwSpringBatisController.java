package com.example.jqwspringbatis;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/")
public class JqwSpringBatisController {
	@RequestMapping(method = RequestMethod.GET)
	public String grid(ModelMap model) {
		return "grid";
	}
	
	@RequestMapping(value = "/users", method = RequestMethod.POST)
	public @ResponseBody List<User> getUsers() {
		List<User> users = new ArrayList<User>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection dbConnection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/new_schema", "root", "abcd1234");
			Statement getFromDb = dbConnection.createStatement();
			ResultSet usersRs = getFromDb
					.executeQuery("SELECT * FROM user");
			while (usersRs.next()) {
				boolean active = convertTinyInt(usersRs.getString("active"));
				if(active) {
					users.add(new User(
							Integer.parseInt(usersRs.getString("id")),
							usersRs.getString("name"),
							active
							));
				}
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
	
	private boolean convertTinyInt(String tinyInt) {
		return tinyInt.equals("1");
	}
}
