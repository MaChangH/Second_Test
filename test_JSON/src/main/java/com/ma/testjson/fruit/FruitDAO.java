package com.ma.testjson.fruit;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FruitDAO {
	@Autowired
	private SqlSession ss ;
	
	
	public void getAllFruite(HttpServletRequest req) {
		try {
			req.setAttribute("fruits", ss.getMapper(FruitMapper.class).getAllFruit());	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	public Fruits getJSON(HttpServletRequest req) {
		return new Fruits(ss.getMapper(FruitMapper.class).getAllFruit());
	}
	
	
}
