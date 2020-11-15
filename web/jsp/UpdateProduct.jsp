<%-- 
    Document   : NewProduct
    Created on : Oct 2, 2020, 7:28:44 AM
    Author     : Windows 10
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AdminLTE 2 | Blank Page</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/AdminLTE.css">
        <link rel="stylesheet" href="../css/_all-skins.min.css">
        <link rel="stylesheet" href="../css/jquery-ui.css">
        <link rel="stylesheet" href="../css/style.css" />
        <script src="../js/angular.min.js"></script>
        <script src="../js/app.js"></script>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <!-- Site wrapper -->
        <div class="wrapper">

            <jsp:include page="header.jsp"/>
            
  <jsp:include page="slider.jsp"/>
            <!-- =============================================== -->

            <!-- Left side column. contains the sidebar -->

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Quản lý menu trang giao diện
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section>
            <!-- =============================================== -->

            <!-- Content Wrapper. Contains page content -->
    <section class="content">

      <!-- Default box -->
     <div class="col-md-8">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Thêm Product</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
       <f:form action="updateProduct.htm" commandName="proUpdate" method ="POST">
            <table border="1">
                <tr>
                    <td>ProductId</td>
                    <td><f:input path="productId" readonly="true"/> </td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td><f:input path="productName"/></td>
                </tr>
                <tr>
                    <td>CategoryId</td>
                   <td><f:select path="category.categoryId">
                                                <f:option value="-1">Selected</f:option>
                                                <c:forEach items="${listCat}" var="cat">
                                                    <f:option value="${cat.categoryId}">${cat.categoryName}</f:option>
                                                </c:forEach>

                                            </f:select></td>
                </tr>
                <tr>
                    <td>Title</td>
                    <td><f:input path="title"/></td>
                </tr>
                <tr>
                    <td>Descriptions</td>
                    <td><f:input path="descriptions"/></td>
                </tr>
                <tr>
                    <td>ProductStatus</td>
                    <td><f:input path="productStatus"/></td>
                </tr>
                
                <tr>
                    <td colspan="4"><input type="submit" value="Sửa"/></td>
                </tr>
            </table>
        </f:form>
          </div>
       
          <!-- /.box -->

        </div>
      <!-- /.box -->

    </section>
            <!-- /.content-wrapper -->

          <jsp:include page="footer.jsp"/>

        </div>
        <!-- ./wrapper -->