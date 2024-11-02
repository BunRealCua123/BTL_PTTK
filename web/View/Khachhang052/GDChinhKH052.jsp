<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%> 
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GDChinhQuanly052</title>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Roboto',sans-serif;
                background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
                min-height: 100vh;
            }
            .container {
                width: 60%;
                margin: 50px auto;
                padding: 20px;
                background-color: white;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                min-height: 500px;
                border-radius: 16px;
                text-align: center
                
            }

            h1 {
                text-align: center;
                color: #2c3e50;
                font-size: 2em;
                margin-bottom: 30px;
                text-transform: uppercase;
                letter-spacing: 1px;
                position: relative;
                padding-bottom: 15px;
            }

            h1:after {
                content: '';
                position: absolute;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
                width: 100px;
                height: 3px;
                background: linear-gradient(to right, #3498db, #2ecc71);
            }

            .thongke-button {
                margin-top: 80px;
                display: inline-block;
                font-size: 1.4em;
                background: #007bff;
                color: white;
                padding: 15px 30px;
                text-decoration: none;
                border-radius: 25px;
                transition: background 0.3s ease;
            }

            .thongke-button:hover {
                background: #0056b3;
            }
            
            .logout{
                position: absolute; 
                top: 20px; 
                right: 20px; 
                padding: 10px 20px; 
                text-decoration: none; 
                background-color: #ffde59;
                color: #2c3e50;
                z-index: 1000;
                font-weight: 700;
                border-radius: 20px;
                font-size: 20px;
                cursor: pointer;
                &:hover{
                    background-color: #e6c944;
                }
            }
        </style>
    </head>
    <body>
        <div class="container" style="position: relative">
            <a href="http://localhost:8080/SupermarketManagementSystem/GDDangnhap.jsp" class="logout">
                Đăng xuất
            </a>
            <div class="header">
                <h1>TRANG CHỦ KHÁCH HÀNG</h1>
            </div>
            <a href="GDTimKiemMH052.jsp" class="thongke-button">
                Tìm kiếm mặt hàng
            </a>
        </div>
    </body>
</html>