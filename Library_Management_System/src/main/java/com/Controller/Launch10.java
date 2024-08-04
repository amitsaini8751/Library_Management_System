package com.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.BookImp;

public class Launch10 extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String newpassword=request.getParameter("newpassword");
		String confirmnewpassword=request.getParameter("conformnewpassword");
		ModelAndView mv=new ModelAndView();
		if(newpassword.equals(confirmnewpassword))
		{
			ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
			BookImp bi=cxt.getBean("bi",BookImp.class);
			String result=bi.changepassword(newpassword);
			if(result.equals("success"))
			{
				mv.addObject("msg","Password Changed");
				mv.setViewName("home");
			}	
		}
		else
		{
			mv.addObject("msg","changingfailed");
			mv.setViewName("home");
		}
		
		return mv;
	}

}
