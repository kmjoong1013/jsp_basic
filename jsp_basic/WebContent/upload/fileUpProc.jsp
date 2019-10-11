<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%
	String realPath = (String)application.getRealPath("/");
	String saveDir = realPath + "upload"; // 업로드될 폴더
	String encType ="UTF-8"; 
	int maxSize = 5*1024*1024; // 업로드 파일 사이즈 
	MultipartRequest mRequest = null;
	String fileName = "";
	try{
		mRequest = new MultipartRequest(request, saveDir, maxSize,encType
				,new DefaultFileRenamePolicy());
		String uploadUser = mRequest.getParameter("uploadUser");
		String title = mRequest.getParameter("title");
%>			
			parameter:uploadUser : <%=uploadUser %> <br>
			parameter:title : <%=title %> <br>
<%			
		if(mRequest != null){
			fileName = mRequest.getFilesystemName("upFile");//서버에 저장된 파일명
			String fileClientName = mRequest.getOriginalFileName("upFile");
			// 업로드 이전의 파일명 
			File file = mRequest.getFile(fileName);
			
			out.println("실제 파일명:"+fileClientName+"<br>");
			out.println("저장된 파일명:"+fileName+"<br>");
			if(file!=null) out.println("파일크기:"+file.length()+"<br>");
		}
	}catch(IOException e){
		out.println(e);
	}catch(Exception ex){
		out.println(ex);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="image.jsp" method="post">
		<input type="hidden" name="img" value="<%=fileName %>">
		<input type="submit" value="그림보기">
	</form>
</body>
</html>