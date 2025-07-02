<%
if(session.getAttribute("admin")==null)
{
out.print("you need to login!");
return;
}

String[] questions=new String[3];
questions[]="What is the capital of Japan?";
questions[1]="Who is the current President of Nepal?";
questions[2]="In which continent Turkey lies?";


String[] correctAns=new String[3];
correctAns[]="Tokyo";
correctAns[1]="Ram Chandra Poudel";
correctAns[2]="Europe";

String[][] Answers=new String[3][4];
Answers[][]="Kathmandu";
Answers[][1]="Tokyo";
Answers[][2]="Beijing";
Answers[][3]="Seoul";

Answers[1][]="KP Oli";
Answers[1][1]="Bidhya Devi Bhandari";
Answers[1][2]="Ram Chandra Poudel";
Answers[1][3]="Prachanda";

Answers[2][]="Europe";
Answers[2][1]="Asia";
Answers[2][2]="North America";
Answers[2][3]="Africa";

String num=request.getParameter("num");
if(numb==null)
numb=0;
else
numb=Integer.parseInt(num);

%>
<html>
    <head><title>Quizz</title></head>
    <body>
    
        <h1> Quizz</h1>
        <table border="0">
            <tr><th><h2><%= questions[numb]%></h2></th></tr>
           <form>
        <tr><td><input type="radio" name="ans" value=<%=Answers[numb][0] %> /><%=Answers[][1]></td></tr>
         <tr><td><input type="radio"  name="ans" value=<%=Answers[numb][1] %> /><%=Answers[][2]></input></td></tr>
          <tr><td><input type="radio" name="ans" value=<%=Answers[numb][2] %> /><%=Answers[][3]></input></td></tr>
          <tr><td> <input type="radio" name="ans" value=<%=Answers[numb][3] %> /><%=Answers[][4]></input></td></tr>
           <inputtype="hidden" name="ans" value
          <tr><td><button type="submit">Next</button></td></tr>
           </table>
    </form>
    </body>
</html>
