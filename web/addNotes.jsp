
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

        <div class="container">
            <center><h1>Please fill your note detail </h1></center>
            <form action="addNoteServlet" method="post">
                <div class="mb-3">
                    <label for="title" class="form-label">Note Title</label>
                    <input name="title" type="text" class="form-control" id="title" placeholder="Enter note title here" required>
                </div>
                <div class="mb-3">
                    <label for="content" class="form-label">Note Content</label>
                    <textarea name="content" id="content" class="form-control" placeholder="Enter note content here" style="height: 300px;" required></textarea>
                </div>

                <center><button type="submit" class="btn btn-outline-success ">Add Note</button></center>
            </form>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
