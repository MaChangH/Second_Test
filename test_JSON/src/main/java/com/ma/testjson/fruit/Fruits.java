package com.ma.testjson.fruit;

import java.util.List;
// 하나하나 내보내기 위해서 
public class Fruits {
	// 리스트 단수로 여기는 불편해도 참
	private List<Fruit> fruit;
	// json 이나 xml 이나 
	
	public Fruits() {
		// TODO Auto-generated constructor stub
	}
	public Fruits(List<Fruit> fruit) {
		super();
		this.fruit = fruit;
	}
	public List<Fruit> getFruit() {
		return fruit;
	}
	public void setFruit(List<Fruit> fruit) {
		this.fruit = fruit;
	}
	
}
