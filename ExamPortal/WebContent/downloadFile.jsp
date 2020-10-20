
<%@ page import="DummyDBpackage.validQues" %>
<%    
  String fil=request.getParameter("qpapercode")+".docx";
  validQues x1=new validQues();
  System.out.println();
  if(x1.isValidQues(fil)){
	  String filename = "attempt1.docx";   
	  String filepath = "D:\\ewoneX\\";   
	  response.setContentType("APPLICATION/OCTET-STREAM");   
	  response.setHeader("Content-Disposition","attachment; filename=\"" + fil + "\"");   
	  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + fil);  	            
	  int i;   
	  while ((i=fileInputStream.read()) != -1) {  
	    out.write(i);   
	  }   
	  fileInputStream.close();   
  }
  else{
	  request.setAttribute("error","Quetion Paper Not found");
	  response.sendRedirect("StudentWelcome.jsp");
  }
%>  