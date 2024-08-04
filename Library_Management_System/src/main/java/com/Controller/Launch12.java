package com.Controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.Book;
import com.Controller.Dao.BookImp;
import com.Controller.Dao.LibraryStudentRecord;
import com.Controller.Dao.LibraryStudentRecordImp;
import com.Controller.Dao.ReadAdmission;
import com.Controller.Dao.ReadAdmissionImp;

public class Launch12 extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String bookId=request.getParameter("bookid"); 
		String regNumber=request.getParameter("regNumber");
		 ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
		BookImp bi=cxt.getBean("bi",BookImp.class);
		Book b=bi.ReadBook(bookId);
		
		ModelAndView mv=new ModelAndView();
		ReadAdmissionImp rdi=cxt.getBean("rdi",ReadAdmissionImp.class);
		ReadAdmission al=rdi.ReadOne(regNumber);
		
		if(b!=null)
		{
			String bookName=b.getBook_name();
			String bookSubject=b.getBook_subject();
			String bookYear=b.getBook_year();
			LibraryStudentRecordImp sri=cxt.getBean("sri",LibraryStudentRecordImp.class);
			String result=sri.StudentAddBook(regNumber, bookId, bookName, bookSubject, bookYear);
			if(result.equals("failed"))
			{
				mv.addObject("msgbook","Enter a valid Book Id");
			}
			
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
		else
		{
			mv.addObject("msgbook","Enter a valid Book Id");
			mv.setViewName("home");
			mv.addObject("rd1",al);
			List<LibraryStudentRecord> al1=rdi.ReadDetail(regNumber);
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
