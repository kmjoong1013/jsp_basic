<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsputil.member.*" %>    
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	String zipcode = request.getParameter("zipcode"); //우편번호
	String addr1 = request.getParameter("addr1"); // 주소
	String addr2 = request.getParameter("addr2"); // 상세주소
	
	MemberVO member = new MemberVO();
	member.setId(id);
	member.setPasswd(passwd);
	member.setName(name);
	member.setEmail(email);
	member.setTel(tel);
	member.setZipcode(zipcode);
	member.setAddr1(addr1);
	member.setAddr2(addr2);
	
	// member
	MemberDAO memberDao = new MemberDAO();
	memberDao.memberInsert(member); 
%>
id:<%=member.getId()%><br>
passwd:<%=member.getPasswd()%><br>
name:<%=member.getName()%><br>
email:<%=member.getEmail()%><br>
tel:<%=member.getTel()%><br>
zipcode:<%=member.getZipcode()%><br>
addr1:<%=member.getAddr1()%><br>
addr2:<%=member.getAddr2()%><br>
<a href="memberList.jsp">회원목록</a>

