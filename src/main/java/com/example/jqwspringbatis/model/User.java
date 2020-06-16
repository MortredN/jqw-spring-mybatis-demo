package com.example.jqwspringbatis.model;

public class User {
	private int id;
	private String name;
	
	public User() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String toString() {
		return "User ID#" + id + " : " + name;
	}
}
