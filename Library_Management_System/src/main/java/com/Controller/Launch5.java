package com.Controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.Book;
import com.Controller.Dao.BookImp;

public class Launch5 extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String bookid=request.getParameter("bookid");
		ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
		BookImp bi= cxt.getBean("bi",BookImp.class);
		Book b=bi.ReadBook(bookid);
		 ModelAndView mv=new ModelAndView();
		
		if(b!=null)
		{
			mv.setViewName("home");
			mv.addObject("b",b);
			
		}
		else
		{
			mv.setViewName("home");
			mv.addObject("msg","No Record Found...!!!");
		
		}
		return mv;
	}

}
