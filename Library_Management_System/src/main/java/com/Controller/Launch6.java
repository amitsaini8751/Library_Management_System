package com.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.BookImp;

public class Launch6 extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	String bookid=(String)request.getParameter("bookid");
	String bookname=(String)request.getParameter("bookname");
	String booksubject=(String)request.getParameter("booksubject");
	String bookyear=(String)request.getParameter("bookpublicationyear");

	ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
	BookImp bi=cxt.getBean("bi",BookImp.class);
	String result=bi.updateBook(bookid, bookname, booksubject, bookyear);
	ModelAndView mv=new ModelAndView();
	if(result.equals("success"))
	{
		mv.addObject("msg","Successfully Updated");
		
	}
	else
	{
		mv.addObject("msg","Failed");
	
	}
	mv.setViewName("home");
	return mv;
}

}
