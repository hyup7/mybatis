package com.mybatis.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mybatis.model.dao.MybatisDao;
import com.mybatis.model.vo.Student;
import com.mybatis.service.MybatisService;

/**
 * Servlet implementation class UpdateStudentServlet
 */
@WebServlet("/updateStudent")
public class UpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		int no=Integer.parseInt(request.getParameter("no"));
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String addr=request.getParameter("addr");
		Student s =new Student();
		s.setStudentNo(no);
		s.setStudentEmail(email);
		s.setStudentTel(phone);
		s.setStudentAddr(addr);
		
		int result= new MybatisService().updateStudent(s);
		
		response.getWriter().print(result>0?"ok":"no");
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
