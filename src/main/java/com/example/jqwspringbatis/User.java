package com.example.jqwspringbatis;

public class User {
	private int id;
	private String name;
	private boolean active;
	
	public User() {}
	
	public User(int id, String name, boolean active) {
		this.id = id;
		this.name = name;
		this.setActive(active);
	}

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

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
	
}
