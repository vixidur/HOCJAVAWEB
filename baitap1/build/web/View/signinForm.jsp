<%-- 
    Document   : loginForm
    Created on : Sep 24, 2024
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đăng kí tài khoản</title>
        <style>
            body{
                font-family: Arial, Helvetica, sans-serif;
            }
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            .box-1{
                flex: 1;
                background-color: white;
            }
            .box-2{
                flex: 2;
                background-color: #ebf5f5;
                max-height: auto;
            }
            .container{
                display: flex;
            }
            .logo-img{
                margin-top: 10%;
            }
            h4{
                color: #262a2e;
                font-size: calc(1.275rem + .3vw);
            }
            p{
                margin-top: 1.8%;
                opacity: 90%;
            }
            .form-label-group label {
                padding-left: 10%;
                margin-top: 5%;
            }
            label {
                display: inline-block;
            }
            .remember-text {
                margin-top: 2%;
            }
            input[type="text"] {
                margin-left: 9%;
                padding: 12px 15px;
                width: calc(100% - 100px);
                font-size: 16px;
                border-radius: 8px;
                border: 1px solid #007d96;
                background-color: #ebf5f5;
                transition: all 0.3s ease;
                box-shadow: 0 4px 8px #007d96;
                outline: none;
            }
            input[type="password"] {
                margin-left: 9%;
                padding: 12px 15px;
                width: calc(100% - 100px);
                font-size: 16px;
                border-radius: 8px;
                border: 1px solid #007d96;
                background-color: #ebf5f5;
                transition: all 0.3s ease;
                box-shadow: 0 4px 8px #007d96;
                outline: none;
            }
            input[type="password"]:focus {
                border-color: #3288bd;
                box-shadow: 0 0 8px #3288bd;
            }
            input[type="text"]:focus {
                border-color: #3288bd;
                box-shadow: 0 0 8px #3288bd;
            }
            .row-gx3{
                margin-top: 2%;
            }

            .btn {
                margin-top: 2%;
                display: inline-block;
                padding: 12px 20px;
                font-size: 16px;
                font-weight: bold;
                text-transform: uppercase; /* Chữ hoa */
                border-radius: 8px;
                border: none;
                cursor: pointer;
                transition: all 0.3s ease;
                text-align: center;
                width: 79%;
                margin-left: 9%;
            }

            .btn-primary {
                background-color: #007bff;
                color: #fff;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            .btn-primary:hover {
                background-color: #0056b3;
                box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2);
                transform: translateY(-2px);
            }

            .btn-primary:active {
                background-color: #00448a;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                transform: translateY(0);
            }

            .btn-uppercase {
                text-transform: uppercase;
            }
            p{
                text-align: center;
                font-size: 13px;
            }
            h1{
                text-align: center;
                margin-top: 8%;
            }
            .sub-title{
                font-size: 18px;
            }
            .btn-info-center {
                text-align: center;
            }

            .btn-info {
                padding: 10px 18px;
                font-size: 16px;
                font-weight: bold;
                color: #007d88;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                transition: background-color 0.3s ease, transform 0.2s;
            }

            .btn-info:hover {
                background-color: #0056b3;
                color: white;
            }
            .registernow {
                border: none;
                background-color: white;
                float: right;
                top: -15px;
                left: -68px;
                position: relative;
                color:#007bff;
            }
            .registernow:hover{
                color: #00448a;
            }
            .registerPlease{
                padding-right: 12%;
            }
        </style>
    </head>
    <body>
        <form action="taikhoan" method="POST">
        <div class="container">
            <div class="box-1">
                <div class="row-gx1">
                    <center>
                        <img src="https://i.imgur.com/pT9lfCw.png" alt="logo" width="230px" height="110px" class="logo-img"/>
                        <h4>Đăng kí tài khoản mới!</h4>
                        <p>Xin mời bạn nhập đầy đủ thông tin đăng kí.</p>
                    </center>
                </div>
                <div class="row-gx2">
                    <div class="form-label-group">
                        <label>Họ tên</label>
                    </div>
                    <input type="text" name="hoten" placeholder="Vui lòng nhập họ tên">
                    <div class="form-label-group">
                        <label>Email</label>
                    </div>
                    <input type="text" name="email" placeholder="Vui lòng nhập email của bạn">
                    <div class="form-label-group">
                        <label>Tài khoản</label>
                    </div>
                    <input type="text" name="username" placeholder="Vui lòng nhập tài khoản">
                    <div class="form-label-group">
                        <label>Mật khẩu</label>
                    </div>
                    <input type="password" name="password" placeholder="Vui lòng nhập mật khẩu">
                    <div class="form-label-group">
                        <label>Xác nhận mật khẩu</label>
                    </div>
                    <input type="password" name="confirmPassword" placeholder="Vui lòng xác nhận mật khẩu">
                </div>
                <div class="row-gx3">
                    <h5>${errorMessage}</h5>
                    <center>
                        <input type="checkbox" name="remember">
                        <label class="remember-text">Ghi nhớ tài khoản</label>
                    </center>
                </div>
                <button type="submit" class="btn btn-primary btn-uppercase btn-block">Đăng ký</button>
                <div class="registerPlease">
                    <center>
                        <div>
                            <p>Bạn đã có tài khoản?</p>
                            <button type="submit" class="registernow" name="action-login" value="login">đăng nhập</button>
                        </div>
                    </center>
                </div>
            </div>
            <div class="box-2">
                <h1>Welcome!</h1>
                <p class="sub-title">Chào mừng bạn đến với hệ thống đầy đủ các sản phẩm giá <br>rẻ, chất lượng nhất thị trường</p>
                <div class="btn-info-center">
                    <button class="btn-info">- ADMIN TRẦN VĂN CHIẾN</button>
                </div>
                <center>
                    <img src="https://i.imgur.com/JnA84u0.png" alt="alt" width="500px" />
                </center>
            </div>
        </div>
        </form>
    </body>
</html>
