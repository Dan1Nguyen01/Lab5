<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <h3>Hello, <c:out value="${name}"/> 
             <a href="shoppingList?action=logout">Logout</a>
       
          
            
      
        </h3>
        <h2>List</h2>
        
        <form action="shoppingList" method="POST">
            <input type="hidden" name="action" value="add">
        <label >
            Add item:
            <input type="text" name="item" id="item">
        </label>
              <button type="submit">Add</button>
        </form>
        <br>
        <form action="shoppingList" method="POST">
             <input type="hidden" name="action" value="delete">
        <c:forEach var="item" items="${items}" >
            <label>
                <input type="radio" value="${item}" name="item">${item}
            </label>
          
        </c:forEach><br>
            
            <button type="submit">Delete</button>
        </form>
        
        
        
    </body>
</html>
