<%-- 
    Document   : NewProduct
    Created on : Oct 2, 2020, 1:57:19 PM
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


            <!-- =============================================== -->



            <!-- =============================================== -->

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <a  class="btn btn-success" href="${contexPath}/WebApplication1/categoryController/getAllCategory.htm"> Home</a>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="#">Examples</a></li>
                        <li class="active">Blank page</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">

                    <!-- Default box -->
                    <div class="col-md-8">
                        <!-- general form elements -->
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">Thêm Order Detail</h3>
                            </div>
                            <!-- /.box-header -->
                            <!-- form start -->
                            <f:form action="insertOrderDetail.htm" commandName="orDeNew">
                                <table border="1">
                                   
                                    <tr>
                                        <td>Id</td>
                                        <td><f:input path="id" readonly=""/></td>
                                    </tr>
                                    
                                    <tr>
                                        <td>ProductDetail</td>
                                        <td><f:select path="productDetail.productDetailId">
                                                <f:option value="-1">Selected</f:option>
                                                <c:forEach items="${listProDe}" var="prDe">
                                                    <f:option value="${prDe.productDetailId}">${prDe.productDetailId}</f:option>
                                                </c:forEach>

                                            </f:select></td>
                                    </tr>
                                    
                                     <tr>
                                        <td>OrderId</td>
                                        <td><f:input path="orderPro.orderId"/></td>
                                    </tr>
                                    
                                    <tr>
                                        <td>Quantity</td>
                                        <td><f:input path="quantity"/></td>
                                    </tr>
                                    <tr>
                                        <td>Amount</td>
                                        <td><f:input path="amount"/></td>
                                    </tr>
                                   

                                    
                                    <tr>
                                        <td>DetailStatus</td>
                                        <td><f:input path="detailStatus"/></td>
                                    </tr>
                                    
                                    <tr>
                                        <td colspan="4"><input type="submit" value="Thêm"/></td>
                                    </tr>
                                </table>
                            </f:form>
                        </div>

                        <!-- /.box -->

                    </div>
                    <!-- /.box -->

                </section>
                <!-- /.content -->
            </div>



            <!-- Content Wrapper. Contains page content -->
            <jsp:include page="footer.jsp"/>

        </div>
        <!-- ./wrapper -->

        <!-- jQuery 3 -->

        <script src="../js/jquery.min.js"></script>
        <script src="../js/jquery-ui.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/adminlte.min.js"></script>
        <script src="../js/dashboard.js"></script>
        <script src="../tinymce/tinymce.min.js"></script>
        <script src="../tinymce/config.js"></script>
        <script src="../js/function.js"></script>
    </body>
</html>
