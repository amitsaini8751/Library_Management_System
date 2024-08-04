package com.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.BookImp;
import com.Controller.Dao.LibraryStudentRecord;
import com.Controller.Dao.ReadAdmission;
import com.Controller.Dao.ReadAdmissionImp;

public class Launch11 extends AbstractController {

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String regNumber=request.getParameter("regNumber");
		ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
		ReadAdmissionImp rdi=cxt.getBean("rdi",ReadAdmissionImp.class);
		ReadAdmission al=rdi.ReadOne(regNumber);
		ModelAndView mv=new ModelAndView();
		if(al==null)
		{
			mv.setViewName("home");
			mv.addObject("studentLoginErrorMsg","Invalid Registration Number");
			
		}
		else
		{
			List<LibraryStudentRecord> al1=rdi.ReadDetail(regNumber);
			mv.setViewName("home");
			mv.addObject("rd1",al);
			if(al1.isEmpty())
			{
				mv.addObject("msg","NoBook");
				
			}
			else
			{
				
				mv.addObject("al1",al1);
			}
		}
		return mv;
	}

}
