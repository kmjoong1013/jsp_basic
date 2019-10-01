<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="jsputil.member.*" %>
<%
	String id = request.getParameter("id");
	MemberDAO memberDao = new MemberDAO();
	MemberVO member = memberDao.getMember(id);
	if(member == null) member = new MemberVO();
%>
<html>
<head>
<title>회원수정</title>
<style type="text/css">
* {FONT-SIZE: 9pt;  COLOR: BLACK;  FONT-FAMILY: 돋움,바탕,verdana;}
INPUT {
	BORDER:1px solid #999999; 
	FONT-SIZE: 9pt;  COLOR: BLACK;  FONT-FAMILY: 돋움,바탕,verdana; HEIGHT: 20px; BACKGROUND-COLOR: white;
}
</style>
<script type="text/javascript">
	function goMemberList(){
		location.href = '/jsp_basic/jdbc/memberList.jsp';
	}
</script>
</head>
 
<body>
  <form name="memberForm" method="post" action="memberUptProc.jsp">
    <table width="400" border="1" cellspacing="2" cellpadding="2"  align="center">
      <tr height="39" align="center"  > 
         <th colspan="2">회원 수정</th>
      </tr>
      <tr> 
        <td>아이디</td>
        <td> 
		  <input type="text" name="id" size="20" readonly value="<%=id%>"><input type="button" value="중복확인"> </td>
      </tr>
      <tr> 
        <td>비밀번호</td> 
        <td> 
	      <input type="password" name="passwd" size="20" 
	      value="<%=member.getPasswd()%>"> </td>
      </tr>
      <tr> 
        <td>비밀번호 확인</td>
        <td> 
		  <input type="password" name="repasswd" size="20"> </td>
      </tr>
      <tr>  
        <td>이름</td>
        <td> 
		  <input type="text" name="name" size="20" value="<%=member.getName()%>"> </td>
      </tr>
      <tr> 
         <td>이메일</td>
         <td> 
		   <input type="text" name="email" size="30" value="<%=member.getEmail()%>"> </td>
      </tr>
      <tr>  
         <td>전화번호</td>
         <td><input type="text" name="tel" size="20" value="<%=member.getTel()%>"> </td>
      </tr>
      <tr>  
         <td>주소</td>
         <td>우편번호<input type="text" name="zipcode" size="7" readonly value="<%=member.getZipcode()%>">
               <input type="button" value="주소검색"><br>
         <input type="text" name="addr1" size="35" value="" readonly value="<%=member.getAddr1()%>"> </td>
      </tr>      
      <tr>  
         <td>상세주소</td>
         <td><input type="text" name="addr2" size="35" value="<%=member.getAddr2()%>">
          </td>
      </tr>      
      <tr> 
         <td colspan="2" align="center"   > 
           <input type="submit" value="회원수정" > 
           <input type="reset" value="다시작성"> 
           <input type="button" value="회원리스트" onclick="goMemberList()">
         </td>
       </tr>
  </table>
</form> 
</body>
</html>
