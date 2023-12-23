<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Note</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp" %>
    
    <br>
    <div class="container-fluid col-md-6 offset-md-3">
    <h1>Please fill your note here</h1>
   <!--  this is the form page -->
   <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required="required" 
    type="text" 
    class="form-control"
    name="title"
     id="title" 
     aria-describedby="noteHelp" 
     placeholder="Enter your note title here...">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Note Content</label>
    <textarea
     class="form-control" 
     name="content"
     id="content" 
     placeholder="Enter your content here.."
     style="height: 200px">
     </textarea>
  </div>
  
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
    
</form>
</div>


</div>
</body>
</html>