<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %> 
<%@ page import="com.centurylink.microservices.account.model.Account" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Boot</title>
</head>
<body>
  <h1>Account Page</h1>
  <hr>

  <h2>Welcome</h2>
   <!-- provide an html table start tag -->
   
  <%--   <table style="border: 1px solid;">
   <!--get the collection from the attribute from appropriate scope (here, request) -->
   <% ArrayList<Account> accounts = (ArrayList)request.getAttribute("accounts"); 

   for (int i = 0; i < accounts.size(); i++) { 
       Account account = (Account)accounts.get(i); %>  
       <!-- create an html table row -->
       <tr>
       <!-- create cells of row -->
       <td><% out.print(account.getId()); %></td>
       <td><% out.print(account.getCustomerId()); %></td>
	   <td><% out.print(account.getNumber()); %></td>
       <!-- close row -->
       </tr>
       <!-- close the loop -->
   <% } %>
   <!-- close table --> 
   </table> --%>
   
     <!--provide an html table start tag -->
   <table style="border: 1px solid;">
   <!-- iterate over the collection using forEach loop -->
   <c:forEach var="account" items="${accounts}">
       <!-- create an html table row -->
       <tr>
       <!-- create cells of row -->
       <td>${account.Id}</td>
       <td>${account.Number}</td>
       <!-- close row -->
       </tr>
       <!-- close the loop -->
   </c:forEach>
   <!-- close table -->
   </table>

   
</body>
</html>