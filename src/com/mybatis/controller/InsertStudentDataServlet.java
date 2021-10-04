package com.mybatis.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mybatis.model.vo.Student;
import com.mybatis.service.MybatisService;

/**
 * Servlet implementation class InsertStudentDataServlet
 */
@WebServlet("/insertStudentData")
public class InsertStudentDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertStudentDataServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String addr=request.getParameter("addr");
		//마이바티스는 매개변수를 한개만 받을수 있음
		//1.객체, 2. MAP
		Student s =new Student();
		s.setStudentName(name);
		s.setStudentTel(phone);
		s.setStudentAddr(addr);
		int result=new MybatisService().insertStudentData(s);
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().print(result>0?"입력성공":"입력실패");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
