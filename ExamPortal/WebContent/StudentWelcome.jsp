<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Semester Exam</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
  	<h3 id="clock" class="text-center">x:XX:xx</h3> 
    	<p class="text-center"><a href="/declaration.html"><button class="btn btn-warning">Declaration Format</button></a></p>
  
    <script> 
        setInterval(showTime, 1000); 
        function showTime() { 
            let time = new Date(); 
            let hour = time.getHours(); 
            let min = time.getMinutes(); 
            let sec = time.getSeconds(); 
            am_pm = "AM"; 
  
            if (hour > 12) { 
                hour -= 12; 
                am_pm = " PM"; 
            } 
            if (hour == 0) { 
                hr = 12; 
                am_pm = " AM"; 
            } 
  
            hour = hour < 10 ? "0" + hour : hour; 
            min = min < 10 ? "0" + min : min; 
            sec = sec < 10 ? "0" + sec : sec; 
  
            let currentTime = hour + ":"  
                + min + ":" + sec + am_pm; 
  
            document.getElementById("clock") 
                .innerHTML = currentTime; 
        } 
  
        showTime(); 
    </script>
    <br><br><br>
<div class="row text-center">
  <div class="col-sm-6">
  	<form action="downloadFile.jsp" method="post">
		<h3>Question Paper Code: </h3><input type="text" name="qpapercode" ><br><br>
		<button type="submit" class="btn btn-success">Get me Question</button>
	</form>
  </div>
  <div class="col-sm-6 text-left" >
  	<h3>Select a file to upload:</h3>
	<form action="answerScriptUpload.jsp" method="post" enctype="multipart/form-data"><br>
		<input type="file" name="file" size="50" /><br>
		<button type="submit" class="btn btn-warning">Upload</button>
	</form>
  </div>
</div>
	
	<br>
	<%
		String s=String.valueOf(session.getAttribute("rollNumber"));
		out.print(s);
	%>
	
</body>
</html>