<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TÍNH TOÁN</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            .calc-container {
                background-color: #fff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
                max-width: 400px;
                width: 100%;
                text-align: center;
            }

            label {
                display: block;
                margin: 10px 0;
                font-weight: bold;
                color: #333;
            }

            input[type="text"] {
                padding: 10px;
                width: calc(100% - 22px);
                font-size: 16px;
                border-radius: 5px;
                border: 1px solid #ccc;
            }

            .operations {
                margin: 20px 0;
            }

            .operations input[type="submit"] {
                padding: 10px 20px;
                font-size: 16px;
                border: none;
                border-radius: 5px;
                margin-right: 10px;
                cursor: pointer;
                background-color: #007bff;
                color: #fff;
                transition: background-color 0.3s;
            }

            .operations input[type="submit"]:hover {
                background-color: #0056b3;
            }

            .result {
                font-size: 24px;
                font-weight: bold;
                margin-top: 20px;
                color: green;
            }

            .error {
                color: red;
                font-weight: bold;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <div class="calc-container">
            <form action="nsver1" method="POST">
                <label>Số A: <input type="text" name="soa" placeholder="Nhập số A"></label>
                <label>Số B: <input type="text" name="sob" placeholder="Nhập số B"></label>
                <div class="operations">
                    <input type="submit" name="operation" value="+"/>
                    <input type="submit" name="operation" value="-"/>
                    <input type="submit" name="operation" value="*"/>
                    <input type="submit" name="operation" value="/"/>
                </div>
                <h3>Ket qua: ${result}</h3>
                <h3>${errorMessage}</h3>
            </form>
        </div>
    </body>
</html>
