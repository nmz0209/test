<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	console.log("123");
	$.ajax({
		type:'post',
		url:'findtest',
		dataType:'JSON',
		contentType:'application.json',
		success:function(data){
			var table = $("#show");
			
			table.append("<tr><th>會員編號</th><th>姓名</th><th>性別</th><th>手機</th><th>生日</th><th>信箱</th><th>消費金額</th></tr>");
			
			$.each(data, function(i,n){
				var tr = "<tr>"+
						 "<td>" + n.customerid + "</td>" + 
						 "<td>" + n.id + "</td>" + 
						 "<td>" + n.sex + "</td>" + 
						 "<td>" + n.phone + "</td>" + 
						 "<td>" + n.birthday + "</td>" + 
						 "<td>" + n.gmail + "</td>" + 
						 "<td>" + n.price + "</td>" + 
						 "</tr>";
			    table.append(tr);			 
			})
		}
	})
})
</script>
</head>
<body>
<table id="show" border="1">
</table>
</body>
</html>