<%@page import="java.util.List"%>
<%@page import="com.Controller.Dao.LibraryStudentRecord"%>
<%@page import="com.Controller.Dao.ReadAdmission"%>
<%@page import="com.Controller.Dao.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
  <script type="text/javascript" src="./resources/js/script.js"></script>
  <script>
  function onload()
  {
  document.getElementById("addNewBookContainer").style.display = "none";
  //document.getElementById("homebtn").style.backgroundColor = "#5cb85c";
  document.getElementById("updateBookContainer").style.display = "none";
  document.getElementById("readBookContainer").style.display = "none";
  document.getElementById("deleteBookContainer").style.display = "none";
  document.getElementById("changepasswordContainer").style.display = "none";
  
  
  
  }
  function addNewBook()
  {
	  document.getElementById("addNewBookContainer").style.display = "block";
	  document.getElementById("homebtn").style.backgroundColor = "#0275d8";
	  document.getElementById("addNewBookbtn").style.backgroundColor = "#5cb85c";
	  document.getElementById("updateBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("updateBookContainer").style.display = "none";
	  document.getElementById("readBookContainer").style.display = "none";
	  document.getElementById("readBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("deleteBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("deleteBookContainer").style.display = "none";
	  document.getElementById("changepasswordContainer").style.display = "none";
	  document.getElementById("changepasswordbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("updateReadBookContainer").style.display = "none";
	  document.getElementById("readBookContainer1").style.display = "none";
	  document.getElementById("imageandform").style.display = "none"; 
	  document.getElementById("footer").style.display = "none";
	  document.getElementById("specialreadblock").style.display = "none";  
	  document.getElementById("specialupdateblock").style.display = "none";
	  document.getElementById("specialdeleteblock").style.display = "none";
	  document.getElementById("specialStudentRecord").style.display = "none";
	  document.getElementById("home").style.display = "block";
	  
	 
	  
  }
  function home()
  {
	  document.getElementById("addNewBookContainer").style.display = "none";
	  document.getElementById("homebtn").style.backgroundColor = "#5cb85c";
	  document.getElementById("addNewBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("updateBookContainer").style.display = "none";
	  document.getElementById("updateBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("readBookContainer").style.display = "none";
	  document.getElementById("readBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("deleteBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("deleteBookContainer").style.display = "none";
	  document.getElementById("changepasswordContainer").style.display = "none";
	  document.getElementById("changepasswordbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("updateReadBookContainer").style.display = "none";
	  document.getElementById("readBookContainer1").style.display = "none";
	  document.getElementById("imageandform").style.display = "block";
	  document.getElementById("footer").style.display = "block";
	  document.getElementById("specialreadblock").style.display = "none"; 
	  document.getElementById("specialupdateblock").style.display = "none";
	  document.getElementById("specialdeleteblock").style.display = "none";
	  document.getElementById("specialStudentRecord").style.display = "none";
	  document.getElementById("home").style.display = "block";
	 
  }
  function updateBook()
  {
	  document.getElementById("addNewBookContainer").style.display = "none";
	  document.getElementById("homebtn").style.backgroundColor = "#0275d8";
	  document.getElementById("addNewBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("updateBookbtn").style.backgroundColor = "#5cb85c";
	  document.getElementById("updateBookContainer").style.display = "block";
	  document.getElementById("readBookContainer").style.display = "none";
	  document.getElementById("readBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("deleteBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("deleteBookContainer").style.display = "none";
	  document.getElementById("changepasswordContainer").style.display = "none";
	  document.getElementById("changepasswordbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("updateReadBookContainer").style.display = "none";
	  document.getElementById("readBookContainer1").style.display = "none";
	  document.getElementById("imageandform").style.display = "none";
	  document.getElementById("footer").style.display = "none"; 
	  document.getElementById("specialreadblock").style.display = "none"; 
	  document.getElementById("specialupdateblock").style.display = "none";
	  document.getElementById("specialdeleteblock").style.display = "none";
	  document.getElementById("specialStudentRecord").style.display = "none";
	  document.getElementById("home").style.display = "block";
  }
  function readBook()
  {
	  document.getElementById("readBookContainer").style.display = "block";
	  document.getElementById("readBookbtn").style.backgroundColor = "#5cb85c";
	  document.getElementById("homebtn").style.backgroundColor = "#0275d8";
	  document.getElementById("addNewBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("updateBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("addNewBookContainer").style.display = "none";
	  document.getElementById("updateBookContainer").style.display = "none"; 
	  document.getElementById("deleteBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("deleteBookContainer").style.display = "none";
	  document.getElementById("changepasswordContainer").style.display = "none";
	  document.getElementById("changepasswordbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("updateReadBookContainer").style.display = "none";
	  document.getElementById("readBookContainer1").style.display = "none";
	  document.getElementById("imageandform").style.display = "none";
	  document.getElementById("footer").style.display = "none"; 
	  document.getElementById("specialreadblock").style.display = "none"; 
	  document.getElementById("specialupdateblock").style.display = "none";
	  document.getElementById("specialdeleteblock").style.display = "none";
	  document.getElementById("specialStudentRecord").style.display = "none";
	  document.getElementById("home").style.display = "block";
  }
  
  function deleteBook()
  {
	  document.getElementById("readBookContainer").style.display = "none";
	  document.getElementById("readBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("homebtn").style.backgroundColor = "#0275d8";
	  document.getElementById("addNewBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("updateBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("addNewBookContainer").style.display = "none";
	  document.getElementById("updateBookContainer").style.display = "none"; 
	  document.getElementById("deleteBookContainer").style.display = "block";
	  document.getElementById("deleteBookbtn").style.backgroundColor = "#5cb85c";
	  document.getElementById("changepasswordContainer").style.display = "none";
	  document.getElementById("changepasswordbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("updateReadBookContainer").style.display = "none";
	  document.getElementById("readBookContainer1").style.display = "none";
	  document.getElementById("imageandform").style.display = "none";
	  document.getElementById("footer").style.display = "none"; 
	  document.getElementById("specialreadblock").style.display = "none"; 
	  document.getElementById("specialupdateblock").style.display = "none";
	  document.getElementById("specialdeleteblock").style.display = "none";
	  document.getElementById("specialStudentRecord").style.display = "none";
	  document.getElementById("home").style.display = "block";
	 
	  
  }
  function changepassword()
  {
	  document.getElementById("readBookContainer").style.display = "none";
	  document.getElementById("readBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("homebtn").style.backgroundColor = "#0275d8";
	  document.getElementById("addNewBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("updateBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("addNewBookContainer").style.display = "none";
	  document.getElementById("updateBookContainer").style.display = "none"; 
	  document.getElementById("deleteBookContainer").style.display = "none";
	  document.getElementById("deleteBookbtn").style.backgroundColor = "#0275d8";
	  document.getElementById("changepasswordContainer").style.display = "block";
	  document.getElementById("changepasswordbtn").style.backgroundColor = "#5cb85c";
	  document.getElementById("updateReadBookContainer").style.display = "none";
	  document.getElementById("readBookContainer1").style.display = "none";
	  document.getElementById("imageandform").style.display = "none";
	  document.getElementById("footer").style.display = "none"; 
	  document.getElementById("specialreadblock").style.display = "none";   
	  document.getElementById("specialupdateblock").style.display = "none";
	  document.getElementById("specialdeleteblock").style.display = "none";
	  document.getElementById("specialStudentRecord").style.display = "none";
	  document.getElementById("home").style.display = "block"; 
  }
  
  
  function BookAddedMessageSuccess()
  {
	  
	  alert("Successfully Saved");
	  
  }
  function BookAddedMessageFailed()
  {
	  alert("Failed\nBook id is already Exist..!!");
  }
  
  function BookUpdatedMessageFailed()
  {
	  alert("No Record Found...!!!");
  }
  
  function updateReadButtonGreen()
  {
	  document.getElementById("updateBookbtn").style.backgroundColor = "#5cb85c";
	  document.getElementById("homebtn").style.backgroundColor = "#0275d8";
	  document.getElementById("imageandform").style.display = "none";
	  
  }
  
  function BookUpdatedMessageSuccess()
  {
	  alert("Successfully Updated");
  }
  
  function BookDeleteddMessageSuccess()
  {
	  alert("Successfully Deleted")
  }
  
  function PassworchangedMessageSuccess()
  {
	  alert("Password Successfully Changed")
  }
  
  function ReadButtonGreen(){
	  document.getElementById("readBookbtn").style.backgroundColor = "#5cb85c";
	  document.getElementById("homebtn").style.backgroundColor = "#0275d8";
	  document.getElementById("imageandform").style.display = "none";
  }
  function deleteReadButtonGreen(){
	  document.getElementById("deleteBookbtn").style.backgroundColor = "#5cb85c";
	  document.getElementById("homebtn").style.backgroundColor = "#0275d8";
	  document.getElementById("imageandform").style.display = "none"; 
	  
  }
  
  function PassworchangedMessageFailed()
  {
	  alert("Failed\nPassword does not matched")
  }
  
  function LibraryStudentRecord()
  {
	  document.getElementById("imageandform").style.display = "none"; 
	  document.getElementById("homebtn").style.backgroundColor = "#0275d8";
	  document.getElementById("home").style.display = "none"; 
	  document.getElementById("addNewBookContainer").style.display = "none";
	  document.getElementById("updateBookContainer").style.display = "none"; 
	  document.getElementById("deleteBookContainer").style.display = "none";
	  document.getElementById("readBookContainer").style.display = "none";
	  document.getElementById("specialreadblock").style.display = "none";   
	  document.getElementById("specialupdateblock").style.display = "none";
	  document.getElementById("specialdeleteblock").style.display = "none";
	  document.getElementById("readBookContainer1").style.display = "none";
	  document.getElementById("changepasswordContainer").style.display = "none";
  }
  
  
  </script>
  <style type="text/css">
 #changepasswordbtn{
 margin-left:500px;
  }
  #body{
  width: 100%;
  background-color:window;
  }
  #form{
  margin-left:30px;
  margin-top:50px;
  }
  #msg{
  margin-top:50px;
  color:white;
  }
  #addNewBookContainer,#deleteReadBookContainer,#updateBookContainer,#readBookContainer1,#readBookContainer,#deleteBookContainer,#changepasswordContainer,#updateReadBookContainer
  {
  margin-top:65px;
  border: 3px solid;
  }
  #addNewBookForm,#updateBookForm,#deleteReadBookForm,#readBookForm1,#readBookForm,#deleteBookForm,#changepasswordForm,#updateReadBookForm{
  margin-top:15px;
  }
  #iframe{
  border-color:gray;
  display:none;
  
  }
  #img{
  width:100%;
  }
  #studentCornerForm{
  margin-top:100px;
  margin-left:15px;
  margin-right: 15px;
  }
  #footer{
  background-color:#1d3b55 ;
  color:white;
  }
  #footerfirstpart{
 margin-left:10px;
  }
  .extraform{
  display:none;
  }
  #noRecordFound{color:red;}
  
  #ButtonLogout1{margin-left:300px;}
  
  #error{color:red; margin-left:10px;}
  
  #table{margin-left:150px;}
  
  </style>
</head>
<% String securitycheck=(String)session.getAttribute("securitycheck");
if(securitycheck!=null)
{
%>

<body  id="body" onload="onload()">

<div class="container-fluid" id="home">
<div class="row">
<h3>Modern Institute of Technology & Research Centre </h3>
<h5>[Librarian Block]</h5>
</div>
<div class="row">
<input type="button" onclick="home()" value="Home" id="homebtn" class="btn-success" >
<input type="button" onclick="addNewBook()" value="Add New Book" class="btn-primary"  id="addNewBookbtn">
<input type="button" onclick="updateBook()" value="Update Book" class="btn-primary"  id="updateBookbtn">
<input type="button" onclick="readBook()" value="Read Book" class="btn-primary"  id="readBookbtn">
<input type="button" onclick="deleteBook()" value="Delete Book" class="btn-primary"  id="deleteBookbtn">
<input type="button" onclick="changepassword()" value="Change Password" class="btn-primary"  id="changepasswordbtn">
<a id="ButtonLogout" href="logout"><button class="btn-primary">Logout&nbsp;&nbsp;&nbsp;&nbsp;</button></a>

</div>
</div>


<!-- Image Block -->

<div class="row" id="imageandform">
<div class="col-md-8">
<img id="img" alt="Image" src="./resources/images/libraryimg12345.jpg">

</div>
<div class="col-md-4">
<form action="studentEntry" id="studentCornerForm">
<h3>Student Corner</h3>
<label for="regNumber">Enter Registration Number</label><br>
<%String studentLoginErrorMsg=(String)request.getAttribute("studentLoginErrorMsg");
		if(studentLoginErrorMsg=="Invalid Registration Number")
		{%>
		<h5 id="error"><%=studentLoginErrorMsg%></h5><%} %>
<input type="text" name="regNumber" id="regNumber" class="form-control" ><br>
<button class="btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;Submit&nbsp;&nbsp;&nbsp;&nbsp;</button>


</form>

</div>

</div>
<% String msg=(String)request.getAttribute("msg");

if(msg=="Successfully Added")
{
%>
<iframe id="iframe" onload="BookAddedMessageSuccess()"></iframe>

<%}
else if(msg=="Failed")
{%>
<iframe id="iframe" onload="BookAddedMessageFailed()"></iframe>
<%}else if(msg=="No Record Found...!!!")
{ %>
<iframe id="iframe" onload="BookUpdatedMessageFailed()"></iframe>
<%}else if(msg=="Successfully Updated")
	{%>
	<iframe id="iframe" onload="BookUpdatedMessageSuccess()"></iframe>
<%} else if(msg=="Successfully Deleted"){%>
<iframe id="iframe" onload="BookDeleteddMessageSuccess()"></iframe>
<%} else if(msg=="Password Changed"){ %>
<iframe id="iframe" onload="PassworchangedMessageSuccess()"></iframe>
<%} else if(msg=="changingfailed"){ %>
<iframe id="iframe" onload="PassworchangedMessageFailed()"></iframe>
<%} %>
 
<!-- Add Book Block -->
<div>

<div class="container" id="addNewBookContainer">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<form  action="addNewBook" id="addNewBookForm">
<label for="bookid">Book Id</label>
<input type="text" name="bookid" id="bookid" class="form-control"><br>
<label for="bookname">Book Name</label>
<input type="text" name="bookname"id="bookname"  class="form-control"><br>
<label  for="booksubject">Book Subject</label>
<input type="text" name="booksubject"id="booksubject"  class="form-control"><br>
<label  for="bookpublicationyear">Book Year</label>
<input type="text" name="bookpublicationyear"id="bookpublicationyear"  class="form-control"><br>
<button class="form-control btn-primary" onclick="">Save</button>
<br>
</form>

</div>
<div class="col-md-3"></div>
</div>
</div>
</div>


<!-- Update Entry Block -->


<div class="container" id="updateBookContainer">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<form action="updateBook" id="updateBookForm">
<label for="bookid">Book Id</label>
<input type="text" name="bookid" id="bookid" class="form-control"><br>
<button class="form-control btn-primary" id="updatebtn" onclick="">Update</button>
<br><br>
</form>


</div>
<div class="col-md-3"></div>
</div>
</div>

<!-- Update Read Block -->
<div id="specialupdateblock">
<form action="" class="extraform"  id="updateReadBookContainer"></form>

<%Book b=(Book)request.getAttribute("b");
if(b!=null)
	{ %>
<div class="container" id="updateReadBookContainer">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<iframe id="iframe" onload="updateReadButtonGreen()"></iframe>
<form action="updatefinalBook" id="updateReadBookForm">
<label for="bookid">Book Id</label>
<input type="text" name="bookid" value="<%=b.getBook_id() %>" id="bookid" readonly="readonly" class="form-control"><br>
<label for="bookname">Book Name</label>
<input type="text" name="bookname" value="<%=b.getBook_name() %>"  id="bookname" class="form-control"><br>
<label for="booksubject">Book Subject</label>
<input type="text" name="booksubject" value="<%=b.getBook_subject() %>"  id="booksubject" class="form-control"><br>
<label for="bookpublicationyear">Book Year</label>
<input type="text" name="bookpublicationyear" value="<%=b.getBook_year() %>"  id="bookpublicationyear" class="form-control"><br>
<button class="form-control btn-primary" onclick="">Update</button>
<br>
</form>

</div>
<div class="col-md-3"></div>
</div>
</div>
<%} %>
</div>



<!-- Read Entry Block -->
<div class="container" id="readBookContainer">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<form action="readBook" id="readBookForm">
<label for="bookid">Book Id</label>
<input type="text" name="bookid" id="bookid" class="form-control"><br>
<button class="form-control btn-primary" id="readbtn" onclick="">Read</button>
<br><br>
</form>
</div>
<div class="col-md-3"></div>
</div>
</div>

<!-- Read Book Block -->
<div id="specialreadblock">
<form action="" class="extraform"  id="readBookContainer1"></form>
<%Book b1=(Book)request.getAttribute("b1");
if(b1!=null)
	{%>

<div class="container" id="readBookContainer1">
<div class="row">
<div class="col-md-1"></div>
<div class="col-md-5">
<iframe id="iframe" onload="ReadButtonGreen()"></iframe>
<div  id="readBookForm1">
<label for="bookid">&nbsp;&nbsp;&nbsp;&nbsp;Book Id&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><span><%=b1.getBook_id() %></span>
<br><br><br><br>
<label for="bookname">Book Name&nbsp;:&nbsp;&nbsp;</label><span><%=b1.getBook_name() %></span>
<br><br>
</div>

</div>
<div class="col-md-5">
<div  id="readBookForm1">
<label for="booksubject">Book Subject:&nbsp;&nbsp;&nbsp;</label><span><%=b1.getBook_subject() %></span>
<br><br><br><br>
<label for="bookpublicationyear">Book Year&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</label><span><%=b1.getBook_year() %></span>
<br><br>
</div>


</div>
<div class="col-md-1"></div>
</div>
</div>
<br><br><br><br><br>
<%} %>

</div>

<!-- Delete Entry Block -->

<div class="container" id="deleteBookContainer">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<form action="deleteBook" id="deleteBookForm">
<label for="bookid">Book Id</label>
<input type="text" name="bookid" id="bookid" class="form-control"><br>
<button class="form-control btn-primary" id="deletebtn" onclick="">Delete</button>
<br><br>
</form>
</div>
<div class="col-md-3"></div>
</div>
</div>

<!-- Delete Read Block -->

<div id="specialdeleteblock">
<%Book b2=(Book)request.getAttribute("b2");
if(b2!=null)
	{ %>
<div class="container" id="deleteReadBookContainer">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<iframe id="iframe" onload="deleteReadButtonGreen()"></iframe>
<form action="deletefinalBook" id="deleteReadBookForm">
<label for="bookid">Book Id</label>
<input type="text" name="bookid" value="<%=b2.getBook_id() %>" id="bookid" readonly="readonly" class="form-control"><br>
<label for="bookname">Book Name</label>
<input type="text" name="bookname" value="<%=b2.getBook_name() %>"  id="bookname" class="form-control" readonly="readonly"><br>
<label for="booksubject">Book Subject</label>
<input type="text" name="booksubject" value="<%=b2.getBook_subject() %>"  id="booksubject" class="form-control" readonly="readonly"><br>
<label for="bookpublicationyear">Book Year</label>
<input type="text" name="bookpublicationyear" value="<%=b2.getBook_year() %>"  id="bookpublicationyear" class="form-control" readonly="readonly"><br>
<button class="form-control btn-primary" onclick="">Delete</button>
<br>
</form>

</div>
<div class="col-md-3"></div>
</div>
</div>
<%} %>
</div>


<!-- Change Password Block -->

<div class="container" id="changepasswordContainer">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<form action="changePassword" id="changepasswordForm">
<label for="newpassword">New Password</label>
<input type="text" name="newpassword" id="newpassword" class="form-control"><br>
<label for="conformnewpassword">Conform New Password</label>
<input type="text" name="conformnewpassword" id="conformnewpassword" class="form-control"><br>
<button class="form-control btn-primary" id="changebtn" onclick="">Save</button>
<br><br>
</form>
</div>
<div class="col-md-3"></div>
</div>
</div>

<!-- Library Student Record -->
<div id="specialStudentRecord">
<%ReadAdmission ra=(ReadAdmission)request.getAttribute("rd1");
List<LibraryStudentRecord> lsr=(List<LibraryStudentRecord>)request.getAttribute("al1");
		String error=(String)request.getAttribute("msgbook");
		if(ra!=null){%>
		
		<div class="container-fluid" id="home1">
<div class="row">
<h3>Modern Institute of Technology & Research Centre </h3>
<h5>[Librarian Block]</h5>
</div>
<div class="row">
<div class="col-md-4">
<input type="button" onclick="home()" value="Home" id="homebtn" class="btn-primary" ></div>
<div class="col-md-4">
<% if(error!=null){%>
<h5 id="error"><%=error %></h5>
<%} %>

<form action="addStudentBook">
<input type="text"    name="bookid" id="bookid" placeholder="Enter Book Id">
<input type="hidden" value="<%=ra.getRegistration_Number()%>" name="regNumber">
<button class="btn-primary">Add New Book</button></form></div>
<div class="col-md-4">
<a id="ButtonLogout1" href="logout"><button class="btn-primary">Logout&nbsp;&nbsp;</button></a></div>

</div>
</div>
			
<div class="container">
<div class="row">
<div class="col-md-4">
<iframe id="iframe" onload="LibraryStudentRecord()"></iframe>
<br><br>
<label><b>Registration Number:&nbsp;&nbsp;</b></label><span><%=ra.getRegistration_Number() %></span><br><br>
<label><b>Student Name:&nbsp;&nbsp;</b></label><span><%=ra.getName() %></span><br><br>
</div>
<div class="col-md-4">
<br><br>
<label><b>Father Name:&nbsp;&nbsp;</b></label><span><%=ra.getFatherName() %></span><br><br>
<label><b>Batch:&nbsp;&nbsp;</b></label><span><%=ra.getBatchFrom()%>-<%=ra.getBatchTo() %></span><br><br>
</div>
<div class="col-md-4">
<br><br>
<label><b>Course:&nbsp;&nbsp;</b></label><span><%=ra.getCourse()%></span><br><br>
<label><b>Subject:&nbsp;&nbsp;</b></label><span><%=ra.getSubject()%></span><br><br>
</div>
</div>
</div>
<hr>
<%if(lsr!=null){ %>
<table class="table-" border="2" id="table">
<thead>
<tr>
<th><b>&nbsp;&nbsp;&nbsp;&nbsp;Book Id&nbsp;&nbsp;&nbsp;&nbsp;</b></th>
<th><b>&nbsp;&nbsp;&nbsp;&nbsp;Book Name&nbsp;&nbsp;&nbsp;&nbsp;</b></th>
<th><b>&nbsp;&nbsp;&nbsp;&nbsp;Book Subject&nbsp;&nbsp;&nbsp;&nbsp;</b></th>
<th><b>&nbsp;&nbsp;&nbsp;&nbsp;Publication Year&nbsp;&nbsp;&nbsp;&nbsp;</b></th>
<th><b>&nbsp;&nbsp;&nbsp;&nbsp;Issued Date&nbsp;&nbsp;&nbsp;&nbsp;</b></th>
<th><b>&nbsp;&nbsp;&nbsp;&nbsp;Button&nbsp;&nbsp;&nbsp;&nbsp;</b></th>
</tr>
</thead>
<tbody>
<%for(LibraryStudentRecord lsr1:lsr) {%>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;<%=lsr1.getBookId()%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;<%=lsr1.getBookName()%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;<%=lsr1.getBookSubject()%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;<%=lsr1.getBookYear()%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;<%=lsr1.getIssueddate()%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;<form action="deleteStudentBook"><input type="hidden" value="<%=lsr1.getBookId()%>" name="bookId">
<input type="hidden" value="<%=lsr1.getRegNumber()%>" name="regNumber">
<button class="btn-danger">Delete</button>
</form>&nbsp;&nbsp;&nbsp;&nbsp;</td>
</tr>
<%} %>
</tbody>
</table>
<br><br><br><br><br><br>
<%} else {%>
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4"><h3 id="noRecordFound">No Record Found</h3></div>
<div class="col-md-4"></div>
</div>
<br><br><br><br><br>
<%} %>

</div>
<%} %>

</body>
<!-- Footer -->

<footer>
<div id="footer">
<div class="row">
<br><br>
<div class="col-md-3" >
<h4 id="footerfirstpart">Modern Institute of Technology & Research Centre</h4>
<h6 id="footerfirstpart">[MITRC]</h6>

</div>
<div class="col-md-3">
<b>MITRC COLLEGE CAMPUS:</b><br><br>
<p>Plot No. IS-2036 to 2039, Ramchandrapura Industrial Area,
 Vidhani,Alwar-303905 
 Rajasthan,India.</p>

</div>
<div class="col-md-3">
<b>Contact Us:</b>
<p>www.mitrcalwar.edu.in</p>
<p>1800-121-6789</p>
</div>
<div class="col-md-3">
<b>FOLLOW US ON</b><br><br>
<i class="fa-brands fa-instagram"></i>&nbsp;&nbsp;&nbsp;&nbsp;
<i class="fa-brands fa-facebook"></i>&nbsp;&nbsp;&nbsp;&nbsp;
<i class="fa-brands fa-square-x-twitter"></i>&nbsp;&nbsp;&nbsp;&nbsp;
<i class="fa-brands fa-linkedin"></i>
</div>

</div>
</div>
</footer>
<%}
else{
	response.sendRedirect("return");
}
%>
</html>