package com.ma.testjson.fruit;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FruitController {
	@Autowired
	private FruitDAO fDAO;
	
	@RequestMapping(value = "/fruit.getJSON", method = RequestMethod.GET,
			produces = "application/json; charset= UTF-8")
	public @ResponseBody Fruits getFruitJSON(HttpServletRequest req) { 
		
		return fDAO.getJSON(req);
	}
	
}
