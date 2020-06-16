package com.example.jqwspringbatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.DeleteProvider;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.UpdateProvider;

import com.example.jqwspringbatis.model.User;

@Mapper
public interface UserMapper {
	
	@SelectProvider(type = UserMapperMethod.class, method = "getUsers")
	@Results(value = {
			@Result(property = "id", column = "id"),
			@Result(property = "name", column = "name")
	})
	List<User> getUsers();
	
	@InsertProvider(type = UserMapperMethod.class, method = "createUser")
	@Options(useGeneratedKeys = true, keyProperty = "id", keyColumn = "id")
	void createUser(User user);
	
	@UpdateProvider(type = UserMapperMethod.class, method = "updateUser")
	void updateUser(int id, User user);
	
	@DeleteProvider(type = UserMapperMethod.class, method = "deleteUser")
	void deleteUser(int id);
}
