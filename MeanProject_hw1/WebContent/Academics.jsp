<%@ page import="java.util.Scanner" %>
<%@ page import="java.io.File" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<% request.setAttribute("title", "Academics"); %>

<%@ include file="header.jsp"  %>

			<div class="w3-col m12 w3-container">
			
				<% 
					String filepath = application.getRealPath("/WEB-INF/faculty.txt");
					File file = new File(filepath);
					Scanner scan = new Scanner(file);
				%>
				<ul class="w3-ul w3-border">
				<li><h2>Academics List:</h2></li>
					<% while(scan.hasNext()) { %>
						<li><%= scan.nextLine() %></li>
					<% } %>	 
				</ul>				
				<% scan.close(); %>
				
			</div>
			
<%@ include file="footer.jsp"  %>