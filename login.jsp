<html>
    <head><title>Quiz app</title></head>
    <style>
    {
        font-family:Veranda;
    }
    form{
        margin-top:00px;
        border-radius:12px;
        box-shadow: 0 0 12px rgb(0,0,0);
        width:1200px;
        height:200px;
    }
    <body>
        <%
         String myuser=request.getParameter("user");
         String mypass=request.getParameter("pass");

         if(myuser!=null && mypass!=null)
         {
         if(myuser.equals("admin")&& mypass.equals("Nepal123"))
            {
            response.sendRedirect("quiz.jsp");
            session.setAttribute("admin","user");
           }
           else
           out.print("login failure!!");
    }
         %>
        <form action="login.jsp">
            <table border ="2">
                <tr><th colspan="2"><h1>My Quizz App</h1></th></tr>
        <tr><td><label for ="name">User</label>
        <input type="text" id="name" name="user"><br></td></tr>
        <tr><td><label for ="password"> Password</label>
        <input type="password" name="pass"><br></td></tr>
        <tr><td><button type="submit">Login </td></tr></button>
            </table>
    </form>
       </body>
     </html>