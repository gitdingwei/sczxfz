<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>home</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="<%=request.getContextPath()%>/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="<%=request.getContextPath()%>/assets/css/font-awesome.css" rel="stylesheet" />
       <!--CUSTOM BASIC STYLES-->
    <link href="<%=request.getContextPath()%>/assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
   <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

    <link href="<%=request.getContextPath() %>/js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Bootstrap 核心css -->

    <link href="<%=request.getContextPath() %>/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">

       <!-- Bootstrap TreeView css -->

    <link href="<%=request.getContextPath() %>/js/bootstrap-treeview/dist/bootstrap-treeview.min.css" rel="stylesheet">

    

       <!-- Bootstrap addTabs css -->

    <link href="<%=request.getContextPath() %>/js/bootStrap-addTabs/bootstrap.addtabs.css" rel="stylesheet">

  

     <!-- Bootstrap table css -->

    <link href="<%=request.getContextPath() %>/js/bootstrap-table/dist/bootstrap-table.css" rel="stylesheet">

   <!-- bootstrap-datetimepicker css -->
    <link href="<%=request.getContextPath() %>/js/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">
     <!-- bootstrap-dialog css -->
    <link href="<%=request.getContextPath() %>/js/bootstrap-dialog/dist/css/bootstrap-dialog.css" rel="stylesheet">
     <!-- bootstrap-fileinput css -->
    <link href="<%=request.getContextPath() %>/js/bootstrap-fileinput/css/fileinput.css" rel="stylesheet">  
</head>
    <style type="text/css">

element.style {
}
.user-img-div img {
}
    </style>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
                   
           <table >
           <tr>
           <td ><img alt=""  height="175px" src="<%=request.getContextPath() %>/js/QQ图片20180516200910.jpg"></td>
           </tr>
           </table>
           
        </nav>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
        
        
            <div class="row">
<nav class="navbar-default navbar-side" role="navigation" style="width:275px;height:700xp;">              
     <div >
            <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;房地产网站</h3>
       </div>
       <div >
           <img src="<%=request.getContextPath() %>/img/touxiang1 (2).jpg" class="img-thumbnail" />
 

       </div>
<!-- 	树 -->
		<div >
			<div id="tree-div" style="color:black" ></div>
		</div>
<!-- 		选项卡 -->
		
	</div>
       </nav>       
    <input type="hidden" value="${userid}" name="userid" >

        </nav>
        
  <div id="page-wrapper">
            <div id="page-inner">
                <!-- <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">BLANK PAGE</h1>
                        <h1 class="page-subhead-line">This is dummy text , you can replace it with your original text. </h1>

                    </div>
                </div> -->
                <!-- /. ROW  -->
                <!-- <div class="row">
                    <div class="col-md-12">
                      
                    </div>
                </div> -->
                              <!-- 中间开始 -->
                            <iframe width="420" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=5&site=12"></iframe>					
         <div>
			<ul id="myTab" class="nav nav-tabs"></ul>
                    <!--想要打开tab页内容，需要把对应的ul和要打开的内容tab放在一个div里  -->
            <div class="tab-content"></div>
		</div>
                             <!-- 中间开始 -->
                <%--<center><font size="10">欢迎来到房地产项目</font></center>--%>


        </div>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
       <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
     <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <!-- bootstrap 核心js文件 -->
    <script src="<%=request.getContextPath() %>/js/bootstrap/js/bootstrap.min.js"></script>
    <!-- bootStrap TreeView -->
    <script src="<%=request.getContextPath() %>/js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
    <!-- bootStrap addTabs -->
    <script src="<%=request.getContextPath() %>/js/bootStrap-addTabs/bootstrap.addtabs.js"></script>
    <!-- bootStrap table -->
    <script src="<%=request.getContextPath() %>/js/bootstrap-table/dist/bootstrap-table.js"></script>
    <!-- bootStrap table 语言包中文-->
    <script src="<%=request.getContextPath() %>/js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
    <!-- bootstrap-datetimepicker -->
    <script src="<%=request.getContextPath() %>/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
    <script src="<%=request.getContextPath() %>/js/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
     <!-- bootstrap-dialog -->
    <script src="<%=request.getContextPath() %>/js/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>
     <!-- bootstrap-fileinput -->
    <script src="<%=request.getContextPath() %>/js/bootstrap-fileinput/js/fileinput.js"></script>
    <script src="<%=request.getContextPath() %>/js/bootstrap-fileinput/js/locales/zh.js"></script> 
<script>

//获取数据
function getTreeData(){
        var tree_data = "";
        var userid=$("[name='userid']").val();
        
        $.ajax({
            url:"<%=request.getContextPath()%>/usercontroller/queryTree",
            type:"post",
            dataType:"json",
            async:false,
            success:function(data){
                tree_data = data;
            },
            error:function(){
                alert("查询出错");
            }
        });
        return tree_data;
    }
     $(function(){
	// 			调用treeview方法
			$('#tree-div').treeview({
						data:getTreeData(),
                levels:function (){
                    Default:1
                },
                onNodeSelected:function(event,node){
							if(node.url != null && node.url !=""){
								addTabs(node.text,node.url);
							}
						}
					})
			})
	function addTabs(titleStr,urlStr){
		$.ajax({
			url:"<%=request.getContextPath()%>"+urlStr,
			success:function(info){
				$.addtabs.add({
	                id:titleStr,
	                title:titleStr,
	                content:info,
	        	})
			}
			
		})
	}	
  </script>
 

</body>
</html>
