<%@ page pageEncoding="UTF-8"%>
<html>
<head>
<title>履歷表</title>
<%request.setCharacterEncoding("UTF-8");%>
</head>
<style>table{
 border: 3px solid;
 font-family: arial, sans-serif;
 font-size:25px;
border-collapse: collapse;
width: 50%;
height: 500px;
}
th,td{
	border: 3px solid;
}
 </style>
<body background="bg1.jpg">
            <table  align="center">
			<h1 align="center">履歷表</h1>
                <tr>
                    <th>姓名</th>
                    <td><%out.println(request.getParameter("name"));%></td>
                </tr>

				<tr>
                    <th>出生年月日</th>
                    <td><%out.println(request.getParameter("birth"));%></td>
                </tr>

                <tr>
                    <th>性別</th>
                    <td><%out.println(request.getParameter("sex"));%></td>
                </tr>

                <tr>
                    <th>學歷</th>
                    <td>
					<%
					String[] a=request.getParameterValues("academic"); for(int i=0;i<a.length;i++){ out.println(a[i]);}
					%>
					</td>
                </tr>

                 <tr>
                    <th>程式能力</th>
                    <td>
					<%
					String[] b=request.getParameterValues("program"); for(int i=0;i<b.length;i++){ out.println(b[i]);}
					%>
					</td>
                </tr>

                <tr>

                   <th>興趣</th>
                    <td>
					<%
					String c[]=request.getParameterValues("hobby"); for(int i=0;i<c.length;i++){ out.println(c[i]);}
					%>
					</td>
                </tr>
                <tr>
                    <th >自傳</th>
                    <td><%out.println(request.getParameter("index"));%></td>
                </tr>
				</table>
</body>
</html>
