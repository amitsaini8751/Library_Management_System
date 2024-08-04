package com.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.LibraryStudentRecord;
import com.Controller.Dao.LibraryStudentRecordImp;
import com.Controller.Dao.ReadAdmission;
import com.Controller.Dao.ReadAdmissionImp;

public class Launch13 extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String bookId=request.getParameter("bookId");
		String regNumber=request.getParameter("regNumber");
		ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
		LibraryStudentRecordImp sri=cxt.getBean("sri",LibraryStudentRecordImp.class);
	    sri.StudentDeleteBook(bookId);
		ModelAndView mv=new ModelAndView();
		ReadAdmissionImp rdi=cxt.getBean("rdi",ReadAdmissionImp.class);
		ReadAdmission al=rdi.ReadOne(regNumber);
		
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
		
		
		
		
		return mv;
	}

}
