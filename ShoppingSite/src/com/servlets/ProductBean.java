package com.servlets;

import java.util.ArrayList;

public class ProductBean {
	private ArrayList<String> path;
	private ArrayList<Float> price;
	private ArrayList<String> name;
	private ArrayList<String> description;
	public ArrayList<String> getPath() {
		return path;
	}
	public void setPath(ArrayList<String> path) {
		this.path = path;
	}
	public ArrayList<Float> getPrice() {
		return price;
	}
	public void setPrice(ArrayList<Float> price) {
		this.price = price;
	}
	public ArrayList<String> getName() {
		return name;
	}
	public void setName(ArrayList<String> name) {
		this.name = name;
	}
	public ArrayList<String> getDescription() {
		return description;
	}
	public void setDescription(ArrayList<String> description) {
		this.description = description;
	}
	public ProductBean(ArrayList<String> path, ArrayList<Float> price,
			ArrayList<String> name, ArrayList<String> description) {
		super();
		this.path = path;
		this.price = price;
		this.name = name;
		this.description = description;
	}
	

}
