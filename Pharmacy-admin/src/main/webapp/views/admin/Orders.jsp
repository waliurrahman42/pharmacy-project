<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page isELIgnored="false" %>
 	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>templett</title>
    
  </head>

 <body>

<%@include file="../templates/header.jsp" %>


 <table class="table">
        <thead class="thead-light">
          <tr>
            <th scope="col">OrderId</th>
            <th scope="col">User Name</th>
            <th scope="col">OrderDate</th>
            <th scope="col">ShipingDate</th>
            <th scope="col">ShipingAddrass</th>
            <th scope="col">Discount</th>
            <th scope="col">NetAmmount</th>
            <th scope="col">Status</th>
            <th scope="col">Details</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Cildip T</td>
            <td>1</td>
            <td>10%</td>
            <td>200</td>
            <td>200</td>
            <td>180</td>
            <td>180</td>
            <td>
              <a href="/OrderDetails" class="btn btn-secondary">
                <i class="fas fa-angle-double-right"></i> Details
              </a>
            </td>
          </tr>
        </tbody>
      </table>



<%@include file="../templates/footer.jsp" %>




</body>
</html>