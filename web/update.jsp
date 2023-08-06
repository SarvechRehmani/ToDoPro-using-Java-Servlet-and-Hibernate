
<%@page import="com.Entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.todo.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Notes : TODO Pro</title>
        <%@include file="cssJs.jsp" %>

    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <%
            int noteId = Integer.parseInt(request.getParameter("note_id").trim());
            Session s = FactoryProvider.getFactory().openSession();
            Note note = s.get(Note.class, noteId);
            s.close();
        %>
        <div class="container">
            <center><h1>Edit your note </h1></center>
            <form action="updateServlet" method="post">
                <input name="id" type="hidden" value="<%= note.getId()%>" required>
                <div class="mb-3">
                    <label for="title" class="form-label">Note Title</label>
                    <input name="title" type="text" class="form-control" id="title" placeholder="Enter note title here" value="<%= note.getTitle()%>" required>
                </div>
                <div class="mb-3">
                    <label for="content" class="form-label">Note Content</label>
                    <textarea name="content" id="content" class="form-control" placeholder="Enter note content here" style="height: 300px;" required> <%= note.getContent()%></textarea>
                </div>

                <center><button type="submit" class="btn btn-outline-success ">Edit Note</button></center>
            </form>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
