<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsputil.member.*"%>
<%
	String idSave = request.getParameter("idSave");
	String loginId = request.getParameter("id");
	String passwd = request.getParameter("pass");

	if(idSave == null){
		Cookie[] cookies = request.getCookies();

		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals("loginId")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
				
			}
		}		
	}else {
		Cookie cookie = new Cookie("loginId", loginId);
		response.addCookie(cookie);

	}

	MemberDAO memberDAO = new MemberDAO();
	int retLogin = memberDAO.loginCheck(loginId, passwd);
	if(retLogin == -1){
		// sendRedirect 
%>
	<script>alert('아이디가 없습니다.'); history.go(-1);</script>
<%		
	}else if(retLogin == 0){
%>
	<script>alert('암호가 틀립니다.'); history.go(-1);</script>
<%
	} else {
		session.setAttribute("myId",loginId);		
		response.sendRedirect("main.jsp");	
	}
			
	
//cookie.setPath("jsp_basic"); // path를 지정했으면 삭제할 때도 path가 같은 경우 삭제를 해야한다.
	
%>
