package com.mybatis.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionTemplate {
	//마이바티스가 제공하는 SqlSession객체를 생성하자..
	//SqlSession을 생성하는 방법
	//1.SqlSessionFactoryBuilder클래스를 생성하자.
	//2.생성된 SqlSessionFactoryBuilder객체의 build(mybatis-config.xml내용)이용
	//3.SqlSessionFactory클래스를 생성
	//4. 생성된 SqlSessionFactory객체의 openSession()메소드이용
	//5. SqlSession객체를 생성함.
	public static SqlSession getSession() {
		SqlSession session =null;
		String resource="/mybatis-config.xml";
		//1.환경설정파일 스트림으로 가져옴
		try {
			InputStream is=Resources.getResourceAsStream(resource);
			SqlSessionFactoryBuilder bulider=new SqlSessionFactoryBuilder();
			SqlSessionFactory factory=bulider.build(is);
			session=factory.openSession(false);//true :자동커밋 /false:직접사용
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}return session;
		
	}
	
}
