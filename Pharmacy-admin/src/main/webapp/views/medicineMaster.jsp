<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page isELIgnored="false" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin-medicine master</title>
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

 <%@include file="header.jsp" %>


<!-- HEADER -->
    <header id="main-header" class="py-2 bg-primary text-white">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1><i class="fas fa-cog"></i> Medicne list</h1>
          </div>
        </div>
      </div>
    </header>

		<!-- *****************delete or edit msg alert *****************-->

		<c:if test="${deleteMsg != null}">
			<div class="alert alert-success text-center" role="alert">
			  <strong>${deleteMsg}</strong>
			</div>
		</c:if>





    <!-- *****************ACTIONS *****************-->
     
     
    <section id="actions" class="py-4 mb-4 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-3 my-1">
            <a
              class="btn btn-success btn-block"
              data-toggle="collapse"
              href="#collapseMedicineinventery"
            >
              Medicine inventery list
            </a>
          </div>
          <div class="col-md-3 my-1">
            <a
              class="btn btn-warning btn-block"
              data-toggle="collapse"
              href="#collapseManufactureList"
              role="button"
            >
              ManufactureList
            </a>
          </div>
          <div class="col-md-3 my-1">
            <a
              class="btn btn-warning btn-block"
              data-toggle="collapse"
              href="#collapseTherapeuticClassList"
              role="button"
            >
              Therapeutic Class List
            </a>
          </div>
          <div class="col-md-3 my-1">
            <a
              class="btn btn-warning btn-block"
              data-toggle="collapse"
              href="#collapsechemicalclassList"
              role="button"
            >
              chemical class List
            </a>
          </div>

          <div class="col-md-3 my-1">
            <a
              class="btn btn-primary btn-block"
            
              href="/collapseADDMedicineData"
            >
              <i class="fas fa-plus"></i> ADD Medicine Data
            </a>
          </div>

          <div class="col-md-3 my-1">
            <a
              class="btn btn-danger btn-block"
              data-toggle="collapse"
              href="#collapseAddManufacture"
            >
              <i class="fas fa-plus"></i> Add Manufacture
            </a>
          </div>

          <div class="col-md-3 my-1">
            <a
              class="btn btn-info btn-block"
              data-toggle="collapse"
              href="#collapseAddchemicalClass"
            >
              <i class="fas fa-plus"></i> Add chemical Class
            </a>
          </div>

          <div class="col-md-3 my-1">
            <a
              class="btn btn-success btn-block"
              data-toggle="collapse"
              href="#collapseAddtheraputicClass"
            >
              <i class="fas fa-plus"></i> Add theraputic Class
            </a>
          </div>
        </div>
      </div>
    </section>

<hr>
     <!--*****************ADD chemical Class*****************  -->
    
    <div class='<c:if test="${editChemicalname == null }">collapse</c:if>' id="collapseAddchemicalClass">
      <hr />
      <form action="addchemicalclass"  method="post">
        <legend>Chemical Class Form</legend>
        <div class="input-group input-group-sm">
          <div class="input-group-prepend">
            <span
              class="input-group-text font-weight-bolder"
              id="inputGroup-sizing-sm "
              >Chemical Name</span
            >
          </div>
          <input
            type="text"
            name="chemicalName"
            value="${editChemicalname.chemicalName }"
            class="form-control"
            aria-label="Small"
            aria-describedby="inputGroup-sizing-sm"
          />
        </div>
        <div id="button-med-reg" class="mt-3">
          <input type="reset" class="btn-danger btn-lg" value="Reset" />
          <input class="btn-success btn-lg" type="submit" value="Submit" />
        </div>
      </form>
    </div>
   
   
   <hr>
    <!-- *****************chemical class list ***************** -->
    
    <div
      class="collapse container-fluid table-widthset"
      id="collapsechemicalclassList"
    >
    
	     <!-- SEARCH -->
	  <section id="search" class="py-4 mb-4 bg-light">
	    <div class="container">
	      <div class="row">
	        <div class="col-md-6 ml-auto">
	          <div class="input-group">
	            <input type="text" name="query" class="form-control" placeholder="Search chemical Class...">
	            <div class="input-group-append">
	              <button class="btn btn-warning">Search</button>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </section>
    
      <div class="row container-fluid">
        <div class="card">
          <div class="card-header">
            <h4>chemical class list</h4>
          </div>
          <table class="table table-striped">
            <thead class="thead-dark">
              <tr>
                <th>chemical class</th>
                <th>chemical class Name</th>
                <th>Update/Delete</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="clist"  items="${chemlist}">
	              <tr>
	                <td>${clist.chemicalId }</td>
	                <td>${clist.chemicalName }</td>
	              	<td><a class="btn btn-success " href="/editchemicalName?chemicalId=${clist.chemicalId }">Edit</a>
					<a class="btn btn-danger " href="/deletechemicalName?chemicalId=${clist.chemicalId }">Delete</a></td>
	              </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>
<hr>
 <!--**************ADD Therapeutic Class ***************** -->
    
    <div class="<c:if test="${editTherapeuticClass == null }">collapse</c:if> container-fluid py-4" id="collapseAddtheraputicClass">
      <form method="post" action="addtherapeuticclass" >
        <legend>Therapeutic class Registartion</legend>

        <div class="input-group input-group-sm">
          <div class="input-group-prepend">
            <span
              class="input-group-text font-weight-bolder"
              id="inputGroup-sizing-sm"
              >Therapeutic Class Name</span
            >
          </div>
          <input
            type="text"
            name="tName"
            value="${editTherapeuticClass.tName }"
            class="form-control"
            aria-label="Small"
            aria-describedby="inputGroup-sizing-sm" required="required"
          />
        </div>

        <div class="input-group input-group-sm">
          <div class="input-group-prepend">
            <span
              class="input-group-text font-weight-bolder"
              id="inputGroup-sizing-sm"
              >Description</span
            >
          </div>
          <input
            type="text" name="tDescription"  value="${editTherapeuticClass.tDescription }" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm"
            />
        </div>

        <div id="button-med-reg" class="">
          <input type="reset" class="btn-danger btn-lg" value="Reset" />
          <input type="submit" class="btn-success btn-lg"  value="Submit" />
        </div>
      </form>
    </div>
    
<hr>
    <!--***************** Therapeutic Class list *****************-->
   
    <div
      class="collapse container-fluid table-widthset"
      id="collapseTherapeuticClassList"
    >
    
       <!-- SEARCH -->
	  <section id="search" class="py-4 mb-4 bg-light">
	    <div class="container">
	      <div class="row">
	        <div class="col-md-6 ml-auto">
	          <div class="input-group">
	            <input type="text" name="query" class="form-control" placeholder="Search Therapeutic Class...">
	            <div class="input-group-append">
	              <button class="btn btn-warning">Search</button>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </section>
    
    
      <div class="row container-fluid">
        <div class="card">
          <div class="card-header">
            <h4>Therapeutic Class list</h4>
          </div>
          <table class="table table-striped">
            <thead class="thead-dark">
              <tr>
                <th>Therapeutic Class id</th>
                <th>Therapeutic Class Name</th>
                <th>Description</th>
                <th>Update</th>
              </tr>
            </thead>
            <tbody>
            
	             <c:forEach var="tclass" items="${tclasslist}" >
		              <tr>
		               <td>${tclass.therapeuticClassId}	</td>	              
		                <td>${tclass.tName}</td>
		                <td>${tclass.tDescription}</td>
		                <td><a class="btn btn-success " href="/edittherapeuticClass?therapeuticClassId=${tclass.therapeuticClassId}	">Edit</a>
					       <a class="btn btn-danger " href="/deletetherapeuticClass?therapeuticClassId=${tclass.therapeuticClassId}	">Delete</a></td>
		              </tr>
	               </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>

   
   
    
    
    
    
    
    
    <!--*****************************************************************************************************************  -->
    
    
<hr>
    <!--*****************ADD Manufacture*****************  -->
   
    <div class="<c:if test="${editmanufactureList == null }">collapse</c:if> container-fluid py-4" id="collapseAddManufacture">
      <hr />
      <form action="addmanufacture" method="post" >
        <legend>Manufacture Registration</legend>

        <div>
          <div class="input-group input-group-sm">
            <div class="input-group-prepend">
              <span
                class="input-group-text font-weight-bolder"
                id="inputGroup-sizing-sm "
                >Manufacture Name</span
              >
            </div>
            <input
              type="text"
              class="form-control"
              name="manufactureName"
              value="${editmanufactureList.manufactureName }"
              aria-label="Small"
              
              aria-describedby="inputGroup-sizing-sm"
            />
          </div>
          <div class="input-group input-group-sm">
            <div class="input-group-prepend">
              <span
                class="input-group-text font-weight-bolder"
                id="inputGroup-sizing-sm "
                >Description</span
              >
            </div>
            <input
              type="text"
              name="mDescription"
              value="${editmanufactureList.mDescription}"
              class="form-control"
             
              aria-label="Small"
              aria-describedby="inputGroup-sizing-sm"
            />
          </div>
          
        </div>
        <div id="button-med-reg" class="">
          <input type="reset" class="btn-danger btn-lg" value="Reset" />
          <input class="btn-success btn-lg" type="submit" value="Submit" />
        </div>
      </form>
    </div>
<hr>
 <!-- *****************manafacture list***************** -->
    
    <div
      class="collapse container-fluid table-widthset"
      id="collapseManufactureList"
    >
    
    
     <!-- SEARCH -->
	  <section id="search" class="py-4 mb-4 bg-light">
	    <div class="container">
	      <div class="row">
	        <div class="col-md-6 ml-auto">
	          <div class="input-group">
	            <input type="text" name="querymanafacture" class="form-control" placeholder="Search Manafacture Class...">
	            <div class="input-group-append">
	              <button class="btn btn-warning">Search</button>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </section>
	  
	  
      <div class="row container-fluid">
        <div class="card">
          <div class="card-header">
            <h4>Manufacture List</h4>
          </div>
          <table class="table table-striped">
            <thead class="thead-dark">
              <tr>
                <th>Manufacturer id</th>
                <th>Manufacturer Name</th>
                <th>Description</th>
                <th>Status</th>
                <th>edit</th>
              </tr>
            </thead>
            <tbody>
	            <c:forEach var="mlist" items="${manuflist}">
	              <tr>
	                <td>${mlist.manufactureId}</td>
	                <td>${mlist.manufactureName}</td>
	                <td>${mlist.mDescription}</td>
	                <td>${mlist.isActive}</td>
	                 <td><a class="btn btn-success " href="/editmanufacture?manufactureId=${mlist.manufactureId}	">Edit</a>
					       <a class="btn btn-danger " href="/deletemanufacture?manufactureId=${mlist.manufactureId}	">Delete</a></td>
	              </tr>
	            </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>

  
  


<hr>
  <!--*****************ADD medicine data***************** -->
     
     
     <c:if test="${(manuf != null) || (editmedicine != null) }">
     
     
     
	    <div class=" container-fluid py-4" id="collapseADDMedicineData">
	      <form id="medicineRegisterpage" action="addmedicine" method="post">
	        <legend>Medicine Add</legend>
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Medicine Name</span
	            >
	          </div>
	          <input
	            type="text"
	            name="medicineName"
	            value="${editmedicine.medicineName }"
	            class="form-control"
	            aria-label="Small"
	            aria-describedby="inputGroup-sizing-sm"
	          />
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Prescription</span
	            >
	          </div>
	          <input
	            type="text"
	            name="prescription"
	            value="${editmedicine.prescription }"
	            class="form-control"
	            aria-label="Small"
	            step="1"
	            value="0"
	            max="1"
	            min="0"
	            aria-describedby="inputGroup-sizing-sm"
	          />
	        </div>
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Type Of Shell</span
	            >
	          </div>
	          <input
	            type="text"
	            name="typeOfSell"
	            value="${editmedicine.typeOfSell}"
	            class="form-control"
	            aria-label="Small"
	            aria-describedby="inputGroup-sizing-sm"
	          />
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Manufacture Name</span
	            >
	          </div>
	          <select name="manufacture" id="Manufacture">
	          		
	            <c:forEach var="manlist" items="${manuf }" >
	            	<option value="${manlist.manufactureId}">${manlist.manufactureName } ${editmedicine.manufacture}</option>
	           	</c:forEach>
	          </select>
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Salt</span
	            >
	          </div>
	          <input
	            type="text"
	            name="salt"
	            value="${editmedicine.salt}"
	            class="form-control"
	            aria-label="Small"
	            aria-describedby="inputGroup-sizing-sm"
	          />
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Mrp</span
	            >
	          </div>
	          <input
	            type="number"
	            name="mrp"
	            value="${editmedicine.mrp}"
	            class="form-control"
	            aria-label="Small"
	            step="0.00"
	            placeholder="0.00"
	            aria-describedby="inputGroup-sizing-sm"
	          />
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Uses</span
	            >
	          </div>
	          <input
	            type="text"
	            name="uses"
	            value="${editmedicine.uses}"
	            class="form-control"
	            aria-label="Small"
	            aria-describedby="inputGroup-sizing-sm"
	          />
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Alternate Medicine</span
	            >
	          </div>
	          <input
	            
	            type="text"
	            name="alternateMedicines"
	            value="${editmedicine.alternateMedicines}"
	            class="form-control"
	            aria-label="Small"
	            aria-describedby="inputGroup-sizing-sm"
	          />
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Side Effects</span
	            >
	          </div>
	          <input
	            type="text"
	            name="sideEffects"
	             value="${editmedicine.sideEffects}"
	            class="form-control"
	            aria-label="Small"
	            aria-describedby="inputGroup-sizing-sm"
	          />
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >How To Use</span
	            >
	          </div>
	          <input
	            type="text"
	            name="howToUse"
	             value="${editmedicine.howToUse}"
	            class="form-control"
	            aria-label="Small"
	            aria-describedby="inputGroup-sizing-sm"
	          />
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Chemical Class Name</span
	            >
	          </div>
	          <select name="chemicalClass" id="chemicalClassName">
	            
	            <c:forEach var="chemlist" items="${chemlist }" >
	            	<option value="${chemlist.chemicalId }">${chemlist.chemicalName }${editmedicine.chemicalClass}</option>
	           	</c:forEach>
	          </select>
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Habit Forming</span
	            >
	          </div>
	          <input
	            type="text"
	            name="habitForming"
	            value="${editmedicine.habitForming}"
	            class="form-control"
	            aria-label="Small"
	            aria-describedby="inputGroup-sizing-sm"
	          />
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Therapeutic Name</span
	            >
	          </div>
	
	          <select name="therapeuticClass" id="Therapeutic">
	           		<option value="${editmedicine.therapeuticClass}">${editmedicine.therapeuticClass}</option>
	            <c:forEach var="therlist" items="${therclass }" >
	            	<option value="${therlist.therapeuticClassId }">${therlist.tName }${editmedicine.therapeuticClass}</option>
	           	</c:forEach>
	          </select>
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Action Class</span
	            >
	          </div>
	          <input
	            type="text"
	            name="actionClass"
	            value="${editmedicine.actionClass}"
	            class="form-control"
	            aria-label="Small"
	            aria-describedby="inputGroup-sizing-sm"
	          />
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Medicine Url 1</span
	            >
	          </div>
	          <div class="custom-file">
	            <input type="file" name="medicineUrl1"  value="${editmedicine.medicineUrl1}" class="custom-file-input" id="customFile" />
	            <label class="custom-file-label" for="customFile"
	              >Choose file</label
	            >
	          </div>
	        </div>
	
	        <div class="input-group input-group-sm">
	          <div class="input-group-prepend">
	            <span
	              class="input-group-text font-weight-bolder"
	              id="inputGroup-sizing-sm"
	              >Medicine Url 2</span
	            >
	          </div>
	          <div class="custom-file">
	            <input type="file" name="medicineUrl2" value="${editmedicine.medicineUrl2}" class="custom-file-input" id="customFile" />
	            <label class="custom-file-label" for="customFile"
	              >Choose file</label
	            >
	          </div>
	        </div>
	
	        <div id="button-med-reg" class="">
	          <input type="reset" class="btn-danger btn-lg" value="Reset" />
	          <input class="btn-success btn-lg" type="submit" value="Submit" />
	        </div>
	      </form>
	    </div>

	</c:if>

 <!--*****************Medicine inventery list table***************** -->
   
    <div class="container-fluid collapse" id="collapseMedicineinventery">
     
      <!-- SEARCH -->
	  <section id="search" class="py-4 mb-4 bg-light">
	    <div class="container">
	      <div class="row">
	        <div class="col-md-6 ml-auto">
	          <div class="input-group">
	            <input type="text" name="querymanafacture" class="form-control" placeholder="Search Medicine ...">
	            <div class="input-group-append">
	              <button class="btn btn-warning">Search</button>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </section>
      
      <div class="row">
        <div class="card overflow-auto">
          <div class="card-header">
            <h4>Medicine Master Table</h4>
          </div>
          <table class="table table-striped table-bordered text-center">
            <thead class="thead-dark">
              <tr>
                <th>Medicine ID</th>
                <th>Medicine Name</th>
                <th>Prescription</th>
                <th>Type Of Shell</th>
                <th>Manufacture Id</th>
                <th>Salt</th>
                <th>Mrp</th>
                <th>Uses</th>
                <th>Alternate Medicine</th>
                <th>Side Effects</th>
                <th>How To Use</th>
                <th>Chemical Class Id</th>
                <th>Habit Forming</th>
                <th>Theraputic Class Id</th>
                <th>Action Class</th>
                <th>Medicine Url 1</th>
                <th>Medicine Url 2</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach var="medList" items="${medlist }">
              	<tr>
	                <td>${medList.medicineId }</td>
	                <td>${medList.medicineName}</td>
	                <td>${medList.prescription }</td>
	                <td>${medList.typeOfSell }</td>
	                <td>${medList.manufacture }</td>
	                <td>${medList.salt }</td>
	                <td>${medList.mrp }</td>
	                <td>${medList.uses }</td>
	                <td>${medList.alternateMedicines }</td>
	                <td>${medList.sideEffects }</td>
	                <td>${medList.howToUse }</td>
	                <td>${medList.chemicalClass }</td>
	                <td>${medList.habitForming }</td>
	                <td>${medList.therapeuticClass }</td>
	                <td>${medList.actionClass }</td>
	                <td>${medList.medicineUrl1 }</td>
	                <td>${medList.medicineUrl2 }</td>
	                <td><a class="btn btn-success " href="/editmedicine?medicineId=${medList.medicineId }">Edit</a>
					<a class="btn btn-danger " href="/deletemedicine?medicineId=${medList.medicineId }">Delete</a></td>
	             
              	</tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>



 <%@include file="footer.jsp" %>






</body>
</html>