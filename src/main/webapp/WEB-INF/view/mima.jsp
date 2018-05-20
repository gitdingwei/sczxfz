<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>
 
 
<div class="modal fade" id="myModal12" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					修改密码
				</h4>
			</div>
			<div class="modal-body" >
			
			<input type="hidden" class="form-control" name="userid" value="${userid}"/>
				  	用户名: <input type="text" class="form-control" name="username" value="${username}"  /><span id="sp1" style="color:red"></span><br>
				      原密码: <input type="text" class="form-control" name="userpass"/><span id="sp2" style="color:red"></span><br>
				新密码: <input type="text" class="form-control" name="newpwd"/><br>
				确认新密码:<input type="text" class="form-control"  onblur="que()" name="queren"/><span id="sp" style="color:red"></span>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default"  data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" onclick="xiu()">
				
					提交更改
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
$(function () { $('#myModal12').modal({
	keyboard: true
})});
</script>


<script>
$(function() {
    $('#myModal12').on('hide.bs.modal',
    function() {
        alert('您真的确定关闭吗 ？？');
    })
});

function que(){
	var newpwd=$("[name='newpwd']").val();
	var queren=$("[name='queren']").val();
	if(newpwd!=queren){
		$("#sp").html("确认密码不正确");
		//alert("确认密码不正确")
	}
}
function xiu(){
var username=$("[name='username']").val();

var newpass=$("[name='newpwd']").val();
$.ajax({
url:"<%=request.getContextPath()%>/usercontroller/updatemima",
type:"post",
data:{
"username":username,
"userpass":$("[name='userpass']").val(),
"newpass":newpass,
},  
dataType:"text",     
success:function(fang){
idsStr = fang.substring(1,fang.length-1);
 if(idsStr=="success"){
		 location.href="<%=request.getContextPath()%>/index.jsp";
	  }else if(idsStr=="error"){
		  $("#sp1").html("用户名不存在");
		 // alert("用户名或手机号不存在"); 
	  }else if(idsStr=="erroruserpas"){
		  $("#sp2").html("原密码错误");
		  // alert("原密码错误")
  }   
},
error:function(){

}
})
}



</script>

</body>
</html>