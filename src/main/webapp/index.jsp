<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>JINSERT Operation</title>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/test"
     user="root"  password=""/>


<sql:update dataSource="" var="result">
INSERT INTO Employees VALUES (104, 2, 'Nuha', 'Ali');
</sql:update>
 
<sql:query dataSource="" var="result">
SELECT * from Employees;
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>Emp ID</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>Age</th>
</tr>
<c:forEach var="row" items="">
<tr>
   <td><c:out value=""/></td>
   <td><c:out value=""/></td>
   <td><c:out value=""/></td>
   <td><c:out value=""/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>