package com.DBBean;
import java.sql.*;

public class DBBean {

	private String driverStr="com.mysql.jdbc.Driver";
	private String connStr="jdbc:mysql://localhost:3306/tutor?characterEncoding=gb2312";
	private String dbusername="root";
	private String dbpassword="3232xyq";
	private Connection conn=null;
	private Statement stmt=null;
	public DBBean(){
		try{
			Class.forName(driverStr);
			conn=DriverManager.getConnection(connStr,dbusername,dbpassword);
			stmt=conn.createStatement();
		}
		catch(Exception ex){System.out.println("�޷�ͬ���ݿ⽨������");}
		}
	 public int executeUpdate(String s){
		 int result=0;
		try{
			result=stmt.executeUpdate(s);}					
		catch(Exception ex){
			System.out.println("ִ�и��´���");
		}
		return result;
	}
	
	public ResultSet executeQuery(String s){
		ResultSet rs=null;				
	   try{
			rs=stmt.executeQuery(s);}					
		catch(Exception ex){
			System.out.println("ִ�в�ѯ����");
		}
		return rs;
	 
	}
	


	
	public void close(){
		try{
			stmt.close();
			conn.close();
		}
		catch(Exception e){};
	}
	
}
	
