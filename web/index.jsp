<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home : TODO Pro</title>
        <%@include file="cssJs.jsp" %>

    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container mx-auto>" mt-5>
            <div class="card shadow bg-white py-5 mt-5">
                <img alt="Note Pic" class="mx-auto" src="img/note.png">
                <h1 class="text-success text-center mt-3">START MAKING YOUR NOTES</h1>
                <center> <a href="addNotes.jsp" class="btn btn-outline-success text-center">Start Here</a> </center>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>