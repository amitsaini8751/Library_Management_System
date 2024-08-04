package com.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.BookImp;

public class Launch9 extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String bookid=(String)request.getParameter("bookid");

		ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
		BookImp bi=cxt.getBean("bi",BookImp.class);
		String result=bi.deleteBook(bookid);
		ModelAndView mv=new ModelAndView();
		if(result.equals("success"))
		{
			mv.addObject("msg","Successfully Deleted");
			
		}
		else
		{
			mv.addObject("msg","Failed");
		
		}
		mv.setViewName("home");
		return mv;
	}

	}
	
		
		

