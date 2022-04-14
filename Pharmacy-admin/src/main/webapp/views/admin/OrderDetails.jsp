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






     <!-- YOUR SOME ORDER-->



    <section Id="myorderpage" class="container-fluid text-info my-5" >
    
      <div data-toggle="collapse"  data-target="#order-details"  class="bg-light rounded p-5">
    <h3>Order List</h3>
    
    <div class="row  justify-content-around">
        <div class="col-6 col-md-8  col-lg-8">
            <h6>Order Id: <span id="orderid">ABC123456</span></h6>
            <h6 id="customer-name" style="display: inline;">Customer Name</h6>
            <p>Delivery Address: <span id="delivery-address">Lorem ipsum dolor sit amet consectetur adipisicing
                    elit. Aliquid ea harum debitis, pariatur voluptatem illum!</span></p>

        </div>
        <div class="col-6  col-md-4  col-lg-4">
            <h6>Total Price &emsp;: <span id="grand-total-price"> &#x20b9; 5999</span></h6>
            <p>Order Date &emsp;: <span id="order-date">29-03-2022</span></p>
            <p>Delivery Date : <span id="order-date">30-03-2022</span></p>
            
              
                <p>Status:<span id="order-status"> 
                  <form action="/updateStatus" method="post" class="my-1">
                    <div class="input-group">
                      <select class="custom-select" id="delivStatus">
                        <option  value="0">Confirmed</option>
                          <option  value="1">Pending</option>
                          <option  value="2">Shipped</option>
                          <option  value="3">Delivered</option>
                      </select>
                      <div class="input-group-append">
                        <input type="submit" class="btn btn-outline-success" value="Update">
                      </div>
                    </div>
                  </form>

                  
                </span></p>
              
              
           
            <button class="btn-danger" id="cancel-order">Cancel</button>
        </div>
        <div class="row collapse" id="order-details">
            <div class="container-fluid row  justify-content-around  ml-1 order-item">
                <div class="col-6  p-2">
                    <h6 id="product-name">Product Name1</h6>
                    <p id="product-description">Product Description1</p>
                    <!-- <br>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Hic nulla fugiat eius corrupti
                        nostrum quasi esse optio provident quis nemo!</p> -->
                </div>
                <div class="col-4 offset-1 p-2">
                    <br>
                    <p>MRP &emsp;&emsp;&nbsp; : <span class="product-mrp">&#x20b9; 1099</span></p>
                    <p>Discount&emsp;: <span class="product-discount">&#x20b9; 100</span></p>
                    <hr>
                    <p>Total Price&nbsp; : <span class="product-price">&#x20b9; 999</span> </p>
                </div>
            </div>
            <hr>
            <div class="container-fluid row  justify-content-around ml-1 order-item">
                <div class="col-6 p-2">
                    <h6 id="product-name">Product Name2</h6>
                    <p id="product-description">Product Description2</p>
                    <!-- <br>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Hic nulla fugiat eius corrupti
                        nostrum quasi esse optio provident quis nemo!</p> -->
                </div>
                <div class="col-4 offset-1 p-2">
                    <br>
                    <p>MRP &emsp;&emsp;&nbsp; : <span class="product-mrp">&#x20b9; 1099</span></p>
                    <p>Discount&emsp;: <span class="product-discount">&#x20b9; 100</span></p>
                    <hr>
                    <p>Total Price&nbsp; : <span class="product-price">&#x20b9; 999</span> </p>
                </div>
            </div>
            <div class="row ml-1">
                <div class="col-12 p-2 seller-details">
                    <span id="seller-name">Seller Name</span>
                    <p>Seller Address: <span id="seller-address: ">Lorem ipsum dolor sit amet consectetur
                            adipisicing elit. Minus, expedita.</span></p>
                </div>

            </div>
        </div>
    </div>
  </div>
</section>




<%@include file="../templates/footer.jsp" %>




</body>
</html>