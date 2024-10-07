<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f2f5;
                margin: 0;
                padding: 0;
                height: 100vh;
            }
            .container{
                display: flex;
                justify-content: center;
                align-items: center;
            }
            form {
                background-color: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                max-width: 400px;
                width: 100%;
            }
            form label {
                display: block;
                font-size: 14px;
                margin-bottom: 8px;
                color: #333;
            }
            form input[type="text"],
            form input[type="password"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 15px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;
                font-size: 14px;
            }
            form input[type="checkbox"],
            form input[type="radio"] {
                margin-right: 10px;
            }
            form button {
                width: 100%;
                padding: 10px;
                background-color: #4CAF50;
                border: none;
                border-radius: 5px;
                color: white;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            form button:hover {
                background-color: #45a049;
            }
            form input[type="checkbox"] + label,
            form input[type="radio"] + label {
                display: inline-block;
                font-size: 14px;
                color: #333;
                margin-right: 20px;
            }
            form input[type="checkbox"] {
                vertical-align: middle;
                margin-top: -2px;
            }
            form input[type="radio"] {
                vertical-align: middle;
                margin-top: -2px;
            }
            form br {
                margin-bottom: 10px;
            }
            #quoctich{
                border: none;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                margin-bottom: 2%;
            }
        </style>
    </head>
    <body>
    <center><h2>THÔNG TIN ĐĂNG KÝ</h2></center>
    <div class="container">
        <form action="dangky" method="POST">
            <label>Tài khoản: <input type="text" name="username" required/></label>
            <label>Mật khẩu: <input type="password" name="password" required/></label>
            <label>Xác nhận mật khẩu: <input type="password" name="confirmPassword" required/></label>

            <label>Sở thích:</label>
            <label><input type="checkbox" name="sothich" value="Đá bóng"/>Đá bóng</label>
            <label><input type="checkbox" name="sothich" value="Cầu lông"/>Cầu lông</label>
            <label><input type="checkbox" name="sothich" value="Đá cầu"/>Đá cầu</label>
            <label><input type="checkbox" name="sothich" value="Thổi sáo"/>Thổi sáo</label><br/>

            <label>Giới tính:</label>
            <label><input type="radio" name="gioitinh" value="Nam"/>Nam</label>
            <label><input type="radio" name="gioitinh" value="Nữ"/>Nữ</label><br/>
            <label>Quốc tịch: </label>
            <select name="quoctich" id="quoctich">
                <option value="Việt Nam">Việt Nam</option>
                <option value="Hàn Quốc">Hàn Quốc</option>
                <option value="Thái Lan" isChecked>Thái Lan</option>
                <option value="Trung Quốc">Trung Quốc</option>

            </select>
            <div style="color: red; margin-bottom: 2%;">
                ${errorMessage}
            </div>
            <button type="submit">Đăng ký</button>
        </form>
    </div>
</body>
</html>
