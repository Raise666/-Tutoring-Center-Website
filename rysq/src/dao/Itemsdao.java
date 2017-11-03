package dao;

import entity.*;
import java.util.ArrayList;
import java.sql.*;

import com.DBBean.*;

public class Itemsdao {
  DBBean jdbc=new DBBean();
  public ArrayList<Course>getAllItems(){
  ArrayList<Course>list=new ArrayList<Course>();
  try{
	  String sql1="select * from class";
	  ResultSet rs1=jdbc.executeQuery(sql1);
	  while(rs1.next()){
		  Course course=new Course();	 
		  course.setClassid(rs1.getString("classid"));
		  course.setClasstype(rs1.getString("classtype"));
		  course.setPeriod(rs1.getInt("period"));
		  course.setTarget(rs1.getString("target"));
		  course.setPrice(rs1.getInt("price"));
		  list.add(course);
  }
return list;
  }
  catch(Exception ex){
	  ex.printStackTrace();
	  return null;
  }
  
  }
  
  public Course getItemsById(String id){
	  Connection conn=null;
	  PreparedStatement stmt=null;
	  try{
	  conn=DBHelper.getConnection();
	  String sql="select * from class where id=?";
	  
	  stmt=conn.prepareStatement(sql);
	  stmt.setString(1,id);
	  ResultSet rs=stmt.executeQuery();
	  if(rs.next()){		 
			  Course course=new Course();	 
			  course.setClassid(rs.getString("classid"));
			  course.setClasstype(rs.getString("classtype"));
			  course.setPeriod(rs.getInt("period"));
			  course.setTarget(rs.getString("target"));
			  course.setPrice(rs.getInt("price"));
			  return course;
			  
	  }
	  else{return null;}
	  
	  
	  }catch(Exception ex){
		  ex.printStackTrace();
		  return null;
	  }
	  
	  
	  
	  
	  
			  
  }
  
}



