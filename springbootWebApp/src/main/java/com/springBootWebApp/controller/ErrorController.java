package com.springBootWebApp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@Controller("error")
public class ErrorController {
	
	@ExceptionHandler(RuntimeException.class)
	public ModelAndView handleException(HttpServletRequest req, HttpServletResponse res, Exception ex)
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("exception",ex.getStackTrace());
		mv.addObject("ürl", req.getRequestURL());
		mv.setViewName("error");
		return mv;
		
	}

}
