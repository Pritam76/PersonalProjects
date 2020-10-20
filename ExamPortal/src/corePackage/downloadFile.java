package corePackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/downloadFile")
public class downloadFile extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String fil=request.getParameter("qpapercode")+".docx";
		  System.out.println(fil);
		  String filename = "attempt1.docx";   
		  String filepath = "D:\\ewoneX\\";   
		  response.setContentType("APPLICATION/OCTET-STREAM");   
		  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
		  
		  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
		            
		  int i; 
		  PrintWriter out;
			try {	
				out = response.getWriter();
				out.write(fileInputStream.read());
			} catch (IOException e) {
				e.printStackTrace();
			}
		  
		  /*while ((i=fileInputStream.read()) != -1) {  
		    out.write(i);   
		  }   
		  fileInputStream.close();*/
	}

}
