

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DetailsDeo")
public class DetailsDeo extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		java.lang.String name = request.getParameter("paramName");
		int age = Integer.parseInt(request.getParameter("paramAge"));
		int salary = Integer.parseInt(request.getParameter("paramSalary"));
		int phone = Integer.parseInt(request.getParameter("paramPhone"));
		java.lang.String email = request.getParameter("paramEmail");
		
		EmpDetails empDetail = new EmpDetails();
		empDetail.insertDetails(name, age, salary, phone, email);
		RequestDispatcher dis = request.getRequestDispatcher("report.html");
		dis.forward(request, response);

	}

}
