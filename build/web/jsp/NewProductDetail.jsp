<%-- 
    Document   : NewProductDetail
    Created on : Oct 6, 2020, 4:18:46 PM
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
        <script src="/WebApplication1/jsp/ckfinder/ckfinder.js" type="text/javascript"></script>
        <script src="/WebApplication1/jsp/ckeditor/ckeditor.js" type="text/javascript"></script>
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
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
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
              <h3 class="box-title">Thêm Color</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <f:form action="insertProductDetail.htm" enctype="multipart/form-data" commandName="proDeNew" method="POST">
            <table class="table table-striped" border="2">             
                <tr>
                    <td>ProductId</td>
                    <td><f:select path="product.productId">
                                                <f:option value="-1">Selected</f:option>
                                                <c:forEach items="${listPro}" var="cat">
                                                    <f:option value="${cat.productId}">${cat.productName}</f:option>
                                                </c:forEach>

                                            </f:select></td>
                </tr>
                <tr>
                    <td>ColorId</td>
                    <td><f:select path="color.colorId">
                                                <f:option value="-1">Selected</f:option>
                                                <c:forEach items="${listCl}" var="cl">
                                                    <f:option value="${cl.colorId}">${cl.colorName}</f:option>
                                                </c:forEach>

                                            </f:select></td>
                </tr>
                <tr>
                    <td>RomName</td>
                    <td><f:select path="rom.romId">
                                                <f:option value="-1">Selected</f:option>
                                                <c:forEach items="${listRom}" var="cl">
                                                    <f:option value="${cl.romId}">${cl.romName}</f:option>
                                                </c:forEach>

                                            </f:select></td>
                </tr>
               
                <tr>
                    <td>Created</td>
                    <td ><f:input path="created"/></td>
                </tr>
                <tr>
                    <td>Discount</td>
                    <td><f:input path="discount"/></td>
                </tr>
                <tr>
                    <td>ViewPro</td>
                    <td><f:input path="viewPro"/></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><f:input path="price"/></td>
                </tr>
                <tr>
                      <td>Quantity</td>
                      <td><f:input path="quantity"/></td>
                </tr>
                <tr>
                      <td>ProductStatus</td>
                      <td><f:input path="productStatus"/></td>
                </tr>
                 <tr>
                    <td>Image</td>
                    <td><input type="file" data-result="imageMainReview" name="imageMain"/></td>
                    <td><div id="imageMainReview"></div></td>
                </tr>
                <tr>
                    <td>Images other</td>
                    <td><input type="file" data-result="imageOtherReview" multiple="multiple" name="imageOther"/>
                    <div id="imageOtherReview"></div></td>
                    
                </tr>
                <tr>
                    <td colspan="4"><input type="submit" value="Thêm"/></td>
                </tr>
            </table>
        </f:form>
            
            <script type="text/javascript">
                var editorimagesLink = CKEDITOR.replace('imagesLinkId');
                CkFinder.setupCKEditor(editorimagesLink,'jsp/ckfinder/');
                
                function handleFileSelect(divResult) {
                //Check File API support
                if (window.File && window.FileList && window.FileReader) {

                    var files = event.target.files; //FileList object
                    var output = document.getElementById(divResult);
                    output.innerHTML = "";
                    for (var i = 0; i < files.length; i++) {
                        var file = files[i];
                        //Only pics
                        if (!file.type.match('image'))
                            continue;

                        var picReader = new FileReader();
                        picReader.addEventListener("load", function (event) {
                            var picFile = event.target;
                            var div = document.createElement("span");
                            div.innerHTML = "<img width='150' class='thumbnail' src='" + picFile.result + "'" + "title='" + picFile.name + "'/>";
                            output.insertBefore(div, null);
                        });
                        //Read the image
                        picReader.readAsDataURL(file);
                    }
                } else {
                    console.log("Your browser does not support File API");
                }
            }


            $(function () {
                $("input[type='file']").change(function () {
                    var result = $(this).data('result');
                    handleFileSelect(result);
                })               
            })
            </script>
            
          </div>
       
         

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


