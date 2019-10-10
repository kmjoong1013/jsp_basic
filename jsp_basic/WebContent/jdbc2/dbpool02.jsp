<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,javax.sql.*, javax.naming.*,jsputil.bbs.*" %>

<%
  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null; 

  try{
	BoardDAO boardDao = BoardDAO.getInstance();
		
	out.print("정상!!!");
  }catch(Exception e){ 
		e.printStackTrace();
		out.print(e.getMessage());
  }finally{
	    if(rs != null) try{rs.close();}catch(SQLException sqle){out.print(sqle.getMessage());}
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){out.print(sqle.getMessage());}
		if(conn != null) try{conn.close();}catch(SQLException sqle){out.print(sqle.getMessage());}
  }
%>