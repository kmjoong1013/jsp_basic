<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   String loginId="";
   Cookie[] cookies = request.getCookies();
   for(int i = 0; i < cookies.length; i++){
      if(cookies[i].getName().equals("loginId")){
         loginId = cookies[i].getValue();
      }
   }
   
   String id = (String)session.getAttribute("myId");
   if(id == null){
%>
<form name="loginFrm" action="loginProc.jsp">
<table width="180" border="1">
   <tr>
      <td >아이디</td><td><input type="text" name="id" size="8" value="<%=loginId %>"></td>
   </tr>
   <tr>
      <td>암호</td><td><input type="password" name="pass" size="8"></td>
   </tr>
   <tr align="center">
      <td colspan="2"><input type="checkbox" name="myId">아이디저장 <input type="submit" value="로그인"></td>
   </tr>
</table>
</form>
<table>
   <tr>
   <td>
   <a href = "C:\Users\Administrator\git\jsp_basic\jsp_basic\WebContent\jdbc\memberForm.jsp">     
회원가입</a> </td>
   </tr>
   <tr>
      <td>      
<a href="main.jsp?centerPage=bbs/bbsList.jsp">
게시판</a></td>
   </tr>
   
</table>
<%
} else {
%>
<form name="loginFrm" action="logoutProc.jsp">
<table width="200" height="100">
   <tr>
      <td><input type="submit" value="로그아웃"></td>
   </tr>
   <tr>
      <td><%=id %></td>
   </tr>
   <tr>
      <td>회원정보수정</td>
   </tr>
   <tr>
      <td><a href="main.jsp?centerPage=bbs/bbsList.jsp">게시판</a></td>
   </tr>
</table>
</form>
<%
}
%>.