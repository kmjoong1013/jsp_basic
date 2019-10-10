<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,javax.sql.*, javax.naming.*" %>

<%
  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null; 

  try{
	Context initCtx = new InitialContext();
    Context envCtx = (Context) initCtx.lookup("java:comp/env");
    DataSource ds = (DataSource)envCtx.lookup("jdbc/pool01");
    conn = ds.getConnection();

	String sql= "select * from member";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
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