<%-- 
    Document   : UpdateUser
    Created on : Oct 2, 2020, 4:50:55 PM
    Author     : Windows 10
--%>

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
       <f:form action="updateUser.htm" commandName="usUpdate" method ="POST">
            <table border="1">
                <tr>
                    <td>User Id</td>
                    <td><f:input path="userId" readonly="true"/> </td>
                </tr>
                <tr>
                    <td>User Name</td>
                    <td><f:input path="userName"/></td>
                </tr>
                <tr>
                    <td>Pass User</td>
                    <td><f:input path="passUser"/></td>
                </tr>
                <tr>
                    <td>sex Admin</td>
                    <td><f:input path="sexAdmin"/></td>
                </tr>
                <tr>
                    <td>Mail</td>
                    <td><f:input path="mail"/></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><f:input path="phone"/></td>
                </tr>
                  <tr>
                    <td>Addresss</td>
                    <td><f:input path="addresss"/></td>
                </tr>
                 <tr>
                    <td>User Status</td>
                    <td><f:input path="userStatus"/></td>
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
