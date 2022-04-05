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
    <title>Admin-Userdetails</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
      integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/mystyleadmin.css" />
    <script src="js/myjScriptadmin.js"></script>
  </head>

 <body>

<%@include file="templates/header.jsp" %>





    <!-- Profile Page -->
    <div class="container mt-3">
        <div class="row gutters">
            <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="account-settings">
                            <div class="user-profile">
                                <div class="user-avatar">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="naiyer Iqbal">
                                </div>
                                <h5 class="user-name">Naiyer Iqbal</h5>
                                <h6 class="user-email">naiyeriqbal678@gmail.com</h6>
                                <h6 class="user-contactno">+91-9876543210</h6>
                            </div>
                            <hr>
                            <div class="manage-address">
                                <button type="button" data-toggle="collapse" data-target="#address-section">Manage
                                    Address</button>
                            </div>
                            <br>
                            <div class="logout">
                                <button>logout</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                <div class=" row card h-80">
                    <div class="card-body" id="add">
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mb-2 text-primary">Personal Details</h6>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="fullName">Full Name</label>
                                    <input type="text" class="form-control" id="fullName" placeholder="Full Name"
                                        disabled>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="eMail">Email-Id</label>
                                    <input type="email" class="form-control" id="eMail" placeholder="Email ID" disabled>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="phone">Contact Number</label>
                                    <input type="text" class="form-control" id="phone" placeholder="Contact Number"
                                        disabled>
                                </div>
                            </div>
                        </div>
                    </div>

                    <br>

                    <div class="card h-80 address-section collapse " id="address-section">
                        <div class="add-address ml-3 mr-3 mb-3 mt-3">
                            <button data-toggle="collapse" data-target="#input-address-section">Add new Address</button>
                        </div>
                        <div class="collapse" id="input-address-section">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="fullName">Full Name</label>
                                    <input type="text" class="form-control" id="fullName" placeholder="Full Name">
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="contactno">Contact Number</label>
                                    <input type="email" class="form-control" id="contactno"
                                        placeholder="Contact Number">
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="address">Address(Area/Street/Locality)</label>
                                    <textarea class="form-control" id="address" placeholder="Area/Street/Locality"
                                        rows="5" cols="10">
                                        </textarea>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="city">City</label>
                                    <input type="text" class="form-control" id="city" placeholder="City">
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="state">State</label>
                                    <input type="text" class="form-control" id="state" placeholder="State">
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="pincode">Pincode</label>
                                    <input type="number" class="form-control" id="pincode" placeholder="pincode">
                                </div>
                            </div>

                            <div class="save-address col-8">
                                <button class="save-address-btn btn btn-primary">Save</button>
                            </div>
                        </div>

                        <div class="user-address-section mt-3 ml-3 mb-3 mr-3 p-3">
                            <div class="left">
                                <span class="username">User Name1</span> &nbsp;
                                <span class="usercontactno">+91-9876543210</span>
                                <br>
                                <span class="useraddress">Area/Street/Locality</span>
                                <br>
                                <span class="usercity">City</span>,
                                <span class="userstate">State</span> -
                                <span class="userpincode">Pincode</span> &nbsp;
                            </div>
                            <div class="right mr-5">
                                <button class="edit-address">
                                    <i class='fas fa-pencil-alt'></i>&nbsp;
                                </button>
                                <button class="delete-address">
                                    <i class="fas fa-trash-alt"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>














<%@include file="templates/footer.jsp" %>




</body>
</html>