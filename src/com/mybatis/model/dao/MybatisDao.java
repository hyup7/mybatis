package com.mybatis.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.model.vo.Student;

public class MybatisDao {

	public int insertStudent(SqlSession session) {
		// 쿼리문을 실행하기 위한 구문만 작성함
		//SqlSession 객체가 제공하는 매소드 호출
		//selectOne,selectList,insert,update,delete
		int result=session.insert("student.insertStudent");//->namespace명.쿼리태그id값	
		return result;
	}

	public int insertStudentName(SqlSession session, String name) {
		int result=session.insert("student.insertStudentName",name);//->namespace명.쿼리태그id값	
		return result;
	}

	public int insertStudentData(SqlSession session, Student s) {
		int result=session.insert("student.insertStudentData",s);	
		return result;
	}

	public int updateStudent(SqlSession session, Student s) {
		int result=session.update("student.updateStudent",s);
		return result;
	}

	public int deleteStudent(SqlSession session, int no) {
		int result=session.delete("student.deleteStudent",no);
		return result;
	}

	public int selcetCount(SqlSession session) {
		return session.selectOne("student.selectCount");
	}

	public Student selectStudentOne(SqlSession session, int no) {
		return session.selectOne("student.selectStudentOne",no);
	}

	public List<Student> selectStudentAll(SqlSession session) {
		return session.selectList("student.selectStudentAll");
	}

	public List<Map> selectStudentMap(SqlSession session, int no) {
		// TODO Auto-generated method stub
		return session.selectList("student.selectStudentMap", no);
	}

}
