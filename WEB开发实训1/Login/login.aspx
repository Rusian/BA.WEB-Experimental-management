<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="母版_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <title>实验教务管理系统——首页</title>
    <style type="text/css">
        .code {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            font-family: Arial;
            font-style: italic;
            color:lightskyblue;
            font-size: 30px;
            padding: 1px 1px;
            letter-spacing: 3px;
            font-weight: bolder;
            float: left;
            cursor: pointer;
            width: 72px;
            height: 41px;
            line-height: 60px;
            margin-top: 1px;
            text-align: center;
            vertical-align: text-top;
        }

        a {
            text-decoration: none;
            font-size: 12px;
            color: #288bc4;
        }

            a:hover {
                text-decoration: underline;
            }

        .auto-style1 {
            width: 150px;
        }
        .wrapper{
				margin:5px auto;
				width:1200px;
			}
	  #footer {
		  height: 30px;
          width:1200px;
          margin:0 auto;
         
		 text-align: center;
		 font-family:"微软雅黑";
        }  
      .clearfix {
	        clear: both;
        }   
    </style>
    <script src="../js/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        var imgIndex = 1;
        var imgArray = new Array("Login_bg1.jpg", "Login_bg2.jpg");//数组元素个数可调
        $(function () {
            //当页面加载完毕后，给Id为bgImg的Div设定高度为浏览器窗体的当前高度
            $("#bgImg").css({ "height": $(window).height() + "px" });
            //定义一个定时器，每隔4000毫秒执行一下rollImg函数
            setInterval(rollImg, 4000);
        });
        //切换背景图片的函数
        function rollImg() {
            //如果图片的Index大于数组的长度-1，则重新初始化下标为0
            if (imgIndex > imgArray.length - 1) {
                imgIndex = 0;
            }
            //先将Id为bgImg的Div隐藏，隐藏的间隔为900毫秒（可调），完全隐藏后执行回调函数也就是900后面function里面的方法
            $("#bgImg").fadeOut(500, function () {
                $("#bgImg").css("background", "url(../images/Login/" + imgArray[imgIndex] + ")");
                imgIndex++;
            });
            //改变Div的background图片后，在调用fadeIn函数将Div显示，显示的间隔为900毫秒（可调）。
            $("#bgImg").fadeIn(900);
        }
        function createCode() {
            code = "";
            var codeLength = 4; //验证码的长度
            var checkCode = document.getElementById("checkCode");
            var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
            for (var i = 0; i < codeLength; i++) {
                var charNum = Math.floor(Math.random() * 52);
                code += codeChars[charNum];
            }
            if (checkCode) {
                checkCode.className = "code";
                checkCode.innerHTML = code;
            }
        }
        function validateCode() {
            var inputCode = document.getElementById("inputCode").value;
            if (inputCode.length <= 0) {
                alert("请输入验证码！");
            }
            else if (inputCode.toUpperCase() != code.toUpperCase()) {
                alert("验证码输入有误！");
                createCode();
                return false;

            }
           
        }

    </script>
    <link rel="stylesheet" type="text/css" href="../css/style_login.css" />
</head>
<body onload="createCode()">
    <div class="wrapper">
        <div style="width:718px;height:80px;text-align:center;background-repeat:no-repeat;background-size:cover; margin: 0 auto;">
            <img src="../images/logo_login.png" style="width:100% ;height:100%;" />
        </div>
    </div>
    <hr style="margin: 5px 0; width:1200px;"/>
    <div class="container" id="bgImg">
        
    </div>
    <!-- container -->

    <div id="content">
            <form id="Form1" runat="server" method ="post">
                <h1>用户 登录</h1>
                <div>
                    <asp:TextBox ID="txtNo" runat="server" placeholder="用户名" ></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="txtPsw" runat="server" placeholder="密码" TextMode="Password" ></asp:TextBox> 
                </div>
                <table>
                    <tr>
                        <td style="margin-left: 10px;" class="auto-style1">
                            
                            <asp:TextBox ID="inputCode" runat="server" Width="80px" placeholder="验证码"></asp:TextBox></td>
                        <td style="width: 100px; margin-top: 0px; text-anchor: end;">
                            <div class="code" id="checkCode" onclick="createCode()" style="margin-top: 1px"></div>
                        </td>
                        <td style="width: 100px; text-align: center"><a href="#" onclick="createCode()">看不清换一张</a></td>
                    </tr>
                </table>

                <p>&nbsp;</p>

                <span class="select user">
                    <h6>
                        <input type="radio" id="manager" runat="server" name="user" value="administrator" />
                        管理员
                <input type="radio" id="teach"  runat="server" name="user" value="teacher" />
                        教师
                <input type="radio" id="stu" runat="server" name="user" value="student" />
                        学生</h6>
                </span>

                <div>
                    &nbsp;<asp:Button ID="Button1" runat="server" Text="登录" OnClientClick="return validateCode()" OnClick="Button1_Click" />
                </div>
            </form>
            <!-- form -->

        </div>
        <div class="clearfix"></div>
        <hr  style="margin: 5px 0;
                width: 1200px;"/>
			<div class="footer" id="footer">
				© 2014 常州工学院  教学管理 
				<div style="font-size:12px;margin-top:5px">
					<span style="color:gray">技术支持 </span> <a target="blank" href="http://www.meehoo.cn"> 常州工学院计算机 </a>
				</div>
			</div><!--footer-->
</body>
</html>
