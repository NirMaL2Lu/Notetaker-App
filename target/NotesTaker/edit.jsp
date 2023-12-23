<%@page import="com.entities.*"%>
<%@page import="com.helper.*"%>
<%@page import="org.hibernate.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit page</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
<div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp" %>
    
    <h1>Edit your note</h1>
    <br>
    
    <%
    
    int noteId=Integer.parseInt(request.getParameter("note_id").trim());
	
	Session session2=FactoryProvider.getFactory().openSession();
	
	Transaction tx=session2.beginTransaction();
	Note note = (Note)session2.get(Note.class, noteId);
    
    %>
    
       <!--  this is the form page -->
   <form action="UpdateServlet" method="post">
   <input value="<%=note.getId()%>" name="noteId" type="hidden"/>
   
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required="required" 
    type="text" 
    class="form-control"
    name="title"
     id="title" 
     aria-describedby="noteHelp" 
     placeholder="Enter your note title here..."
     value="<%= note.getTitle()%>">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Note Content</label>
    <textarea
     class="form-control" 
     name="content"
     id="content" 
     placeholder="Enter your content here.."
     style="height: 200px">
     
     <%=note.getContent() %>
     </textarea>
  </div>
  
  <div class="container text-center">
  <button type="submit" class="btn btn-success">Update your note</button>
  </div>
    
</form>
    
    </div>

</body>
</html>