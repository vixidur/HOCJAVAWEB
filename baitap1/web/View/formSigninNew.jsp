<%-- 
    Document   : formSigninNew
    Created on : Oct 1, 2024, 2:38:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ĐĂNG KÝ | DUONGKENH24H.SITE</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body {
                font-family: Arial, Helvetica, sans-serif;
                background-color: #f0f0f0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .container {
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 20px;
            }
            .row-gx-group {
                background-color: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
                width: 600px;
            }
            .row-gx-group label {
                font-weight: bold;
                margin-bottom: 5px;
                color: #333;
            }
            input[type="text"],
            input[type="password"],
            select,
            textarea {
                width: 100%;
                padding: 10px;
                margin-bottom: 15px;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 14px;
            }
            input[type="radio"],
            input[type="checkbox"] {
                margin-right: 10px;
            }
            textarea {
                height: 80px;
                resize: none;
            }
            .row-gx-group button {
                width: 100%;
                padding: 12px;
                background-color: #4CAF50;
                border: none;
                color: white;
                font-size: 16px;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            .row-gx-group button:hover {
                background-color: #45a049;
            }
            input:focus,
            select:focus,
            textarea:focus {
                border-color: #4CAF50;
                outline: none;
            }
            label + input[type="radio"] + label {
                display: inline-block;
                margin-right: 15px;
            }
        </style>
    </head>
    <body>
        <form action="services" method="POST">
            <div class="container">
                <div class="row-gx-group">
                    <center><h1>ĐĂNG KÝ</h1></center>
                    <div class="row-gx-1">
                        <label>Tên đăng nhập:</label><br>
                        <input type="text" name="username" placeholder="Vui lòng nhập tài khoản"/>              
                    </div>
                    <div class="row-gx-2">
                        <label>Mật khẩu:</label><br>
                        <input type="password" name="password" placeholder="Vui lòng nhập mật khẩu"/>
                    </div>
                    <div class="row-gx-3">
                        <label>Giới tính:</label><br>
                        <input type="radio" name="gender" id="male"/><label for="male">Nam</label>
                        <input type="radio" name="gender" id="female" checked/><label for="female">Nữ</label>
                    </div>
                    <div class="row-gx-4">
                        <label>Quốc tịch:</label>
                        <select id="cars" name="country">
                            <option value="Viet Nam">Việt Nam</option>
                            <option value="United States">Mỹ</option>
                            <option value="Han Quoc">Hàn Quốc</option>
                            <option value="Thai Lan">Thái Lan</option>
                        </select>
                    </div>
                    <div class="row-gx-5">
                        <label>Sở thích:</label><br>
                        <input type="checkbox" name="sothich" id="ken" value="Thổi kèn"/><label for="ken">Thổi kèn</label>
                        <input type="checkbox" name="sothich" id="guitar" value="Đàn guitar"/><label for="guitar">Đàn guitar</label>
                        <input type="checkbox" name="sothich" id="sao" value="Sáo trúc"/><label for="sao">Sáo trúc</label>
                        <input type="checkbox" name="sothich" id="bong" value="Đá bóng"/><label for="bong">Đá bóng</label>
                    </div>
                    <div class="row-gx-6">
                        <label>Ghi chú:</label><br>
                        <textarea placeholder="Ghi chú của bạn..." name="ghichu"></textarea>
                    </div>
                    <button type="submit" name="submitwhenlogin">Đăng ký</button>
                </div>
            </div>
        </form>
    </body>
</html>

