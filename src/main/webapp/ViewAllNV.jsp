<%@page import="Model.Bean.Nhanvien"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.ArrayList" %>
<%@ page language="java" import="Model.Bean.Nhanvien" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>

</head>
<body>
		<%
			if(session.getAttribute("username")!=null)
			{
		%>
			<h2 style="text-align: right"><%=session.getAttribute("username") %></h2>
		<%} %>
	<table border = "1" width = "100%">
	<caption>Danh sách nhân viên</caption>
	<tr><th>IDNV</th><th>Họ tên</th><th>IDPB</th><th>Địa chỉ</th></tr>
		<%
		ArrayList<Nhanvien> ArrayNV=(ArrayList<Nhanvien>)request.getAttribute("AllNV");
		for(int i=0;i< ArrayNV.size();i++)
		{
		%>
		<tr>
			<td><%=ArrayNV.get(i).getIDNV() %></td>
			<td><%=ArrayNV.get(i).getName() %></td>
			<td><%=ArrayNV.get(i).getIDPB() %></td>
			<td><%=ArrayNV.get(i).getDiaChi() %></td>
		</tr>
		<%}
		%>
	</table>
	<p><a href="javascript:history.back()">Trang trước</a></p>
</body>
</html>