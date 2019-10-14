<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%><%@page import="java.io.*"%><%@page import="jsputil.bbs.*" %><% 
  // �ٿ���� ������ �̸��� ������
  String strNum = request.getParameter("num");
  int num = Integer.parseInt(strNum);
  
  BoardDAO boardDao = BoardDAO.getInstance();
  BoardVO article = boardDao.getArticle(num);
  
  // �ٿ���� ������ ����Ǿ� �ִ� ���� �̸�
  String saveFolder = "File";
  
  // Context�� ���� ������ �˾ƿ�
  ServletContext context = getServletContext(); // ������ ���� ȯ�������� ������
  
  // ���� ������ ����Ǿ� �ִ� ������ ���
  String realFolder = context.getRealPath(saveFolder);
  // �ٿ���� ������ ��ü ��θ� filePath�� ����
  //String filePath = realFolder + "\\" + fileName;
  String filePath = article.getFilePath();
  
  int pos = filePath.lastIndexOf("\\");
  String fileName = filePath.substring(pos+1);
  
  try{
   // �ٿ���� ������ �ҷ���
   File file = new File(filePath);
   byte b[] = new byte[4096];
   
   // page�� ContentType���� �������� �ٲٱ� ���� �ʱ�ȭ��Ŵ
   response.reset();
   
   response.setContentType("application/octet-stream");
   // �ѱ� ���ڵ�
   String Encoding = new String(fileName.getBytes("euc-kr"), "8859_1");
   // ���� ��ũ�� Ŭ������ �� �ٿ�ε� ���� ȭ���� ��µǰ� ó���ϴ� �κ�
   response.setHeader("Content-Disposition", "attachment; filename = " + Encoding);
   // ������ ���� ������ �о���� ���ؼ� ����
   FileInputStream in = new FileInputStream(filePath);
   // ���Ͽ��� �о�� ���� ������ �����ϴ� ���Ͽ� ���ֱ� ���ؼ� ����
   ServletOutputStream out2 = response.getOutputStream();
   if(in != null){
	   int numRead;
	   // ����Ʈ �迭 b�� 0�� ���� numRead�� ���� ���Ͽ� ���� (���)
	   while((numRead = in.read(b, 0, b.length)) != -1){
	    out2.write(b, 0, numRead);
	   }
	   
	   out2.flush();
	   out2.close();
	   in.close();
   }
  } catch(Exception e){
  }
 %>