<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>details</title>
<style> h3{ color: blue; font-family: italic;
font-size: 2em;}


</style>
</head>
<body>

	<table cellspacing="9" cellpadding="9" border="2" >
		
			<% 
			out.print("<h3>Employee Details Given Below</h3>");
			out.println("<tr bgcolor=gray style=color:white style=font-family:Trebuchet MS> <td  > " + "NAME" + " </td> <td> " + "AGE" + "</td> <td>"
					+ "SALARY" + "</td><td> " + "PHONE NO" + "</td> <td>" + "EMAIL"
					+ "</td></tr>");
				List<Employee> list = (List<Employee>) request.getAttribute("emplist");
				
				for (Employee employee : list) {
					out.println("<tr> <td bgcolor=green > "  + employee.getName() + "</td> <td> " + employee.getAge() + "</td> <td>"
							+ "</td><td > " + employee.getSalary() + "</td><td > " + employee.getPhone() + "</td> <td >" + employee.getEmail()
							+ "</td></tr>");
				}
			%>
		
	</table>


</body>
</html>