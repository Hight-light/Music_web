<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<title>忘记密码</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<script type="text/javascript" src="js/register.js"></script>
<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
<!--  <script type="text/javascript">
		$(function(){
			$("#send").click(function(){
				var phonenum=$("#phone").val();
				location.href="${pageContext.request.contextPath}/SendSMS?phone="+phonenum;
				$("#phone").val(phonenum);
			});
		})
	</script> -->
<script type="text/javascript">
    $(document).ready(function(){
        $("#send").click(function(){
            $.ajax({
                type: "POST",
                url: "SendSMS?phone="+$("#phone").val(),
                dataType: "text",
                success: function(){
                   
                },
                error: function(){
                  
                }
            });
        });
    });
</script>
</head>
<body>
	<div id="wrap">
		<div id="top_content">
			<div id="logo_login">
				<a href="index.jsp"><h1>Change Password</h1></a>
			</div>
			<div id="content">
				<p id="whereami"></p>
				<form action="${pageContext.request.contextPath}/forget" method="post" >
					<table cellpadding="0" cellspacing="0" border="0"
						class="form_table">
						<tr>
							<td valign="middle" align="right">用户名</td>
							<td valign="middle" align="left">
								<input type="text" class="inputgri" name="username" id="user" onblur="checkUser();"/>
								<span id="user_span"></span>
							</td>
						</tr>
						<tr>
							<td valign="middle" align="right">电话</td>
							<td valign="middle" align="left">
								<input type="text" class="inputgri" name="phone" id="phone" value="${phone}" onblur="checkEma();"/>
								<span id="s"></span>
							</td>
						</tr>
						<tr>
						<td valign="middle" align="right">验证码</td>
						<td style="width:50%">
						<input type="text" name="code" id="inputCode"/><input type="button" class="inputgri" value="发送" id="send" />
						</td>
				</tr>
						<tr>
							<td valign="middle" align="right">密码</td>
							<td valign="middle" align="left">
								<input type="password" class="inputgri" name="password" id="pass" onblur="checkPassword();"/>
								<span id="p"></span>
							</td>
						</tr>
					</table>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" class="button" value="确定" />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" class="button" value="取消" />
					</p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>