<%@page import="com.Entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.*"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.todo.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Notes : TODO Pro</title>
        <%@include file="cssJs.jsp" %>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container">
            <center><h1>All Notes</h1></center>
            <div class="row">
                <div class="col-12">
                    <%
                        Session s = FactoryProvider.getFactory().openSession();
                        Query q = s.createQuery("from Note");
                        List<Note> list = q.list();
                        for (Note notes : list) {
                    %>

                    <div class="card shadow m-4 mb-5">
                        <img src="img/note.png" class="card-img-top m-4 mx-auto" alt="Note" style="max-width: 90px">
                        <div class="card-body px-5">
                            <h4 class="card-title"><%=notes.getTitle()%></h4>
                            <p class="card-text"><%= notes.getContent()%></p>
                            <p class="card-text"><b class="text-success"><%= notes.getAddDate()%></b></p>
                            <div class="text-center">
                                <a href="update.jsp?note_id=<%= notes.getId()%>" class="btn btn-outline-warning">Update</a>
                                <a href="deleteServlet?note_id=<%= notes.getId()%>" class="btn btn-outline-danger">Delete</a>
                            </div>
                        </div>
                    </div>

                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
