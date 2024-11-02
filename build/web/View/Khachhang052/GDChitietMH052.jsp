<%@page import="DAO.Mathang052DAO"%>
<%@page import="Model.Mathang052"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String maMH = request.getParameter("maMH");
    Mathang052DAO mathang052DAO = new Mathang052DAO();
    Mathang052 mathang052 = mathang052DAO.getMathang(maMH);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chi tiết mặt hàng</title>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Roboto', sans-serif;
                background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
                min-height: 100vh;
                padding: 20px;
                color: #333;
            }

            .container {
                position: relative;
                width: 70%;
                margin: 30px auto;
                padding: 40px;
                background-color: white;
                box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
                min-height: 500px;
                border-radius: 20px;
            }


            h1 {
                text-align: center;
                color: #2c3e50;
                font-size: 2.2em;
                margin-bottom: 40px;
                padding-bottom: 15px;
                position: relative;
            }

            h1::after {
                content: '';
                position: absolute;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
                width: 100px;
                height: 3px;
                background: linear-gradient(to right, #3498db, #2ecc71);
            }

            .product-details {
                margin: 40px auto;
                display: flex;
                justify-content: center;
            }

            .product-details table {
                width: 90%;
                border-collapse: separate;
                border-spacing: 0;
                border-radius: 8px;
                overflow: hidden;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
            }

            .product-details td {
                padding: 15px 20px;
                border: 1px solid #e0e0e0;
                transition: all 0.3s ease;
            }

            .product-details tr:hover td {
                background-color: #f8f9fa;
            }

            .product-details td:first-child {
                font-weight: 500;
                width: 35%;
                background-color: #f8f9fa;
                color: #2c3e50;
                border-right: 2px solid #e0e0e0;
            }

            .back {
                position: absolute;
                right: 40px;
                bottom: 40px;
            }

            .back-button {
                display: inline-block;
                padding: 12px 25px;
                background: linear-gradient(135deg, #003366 0%, #004080 100%);
                color: white;
                text-decoration: none;
                border-radius: 8px;
                font-weight: 500;
                transition: all 0.3s ease;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            .back-button:hover {
                background: linear-gradient(135deg, #004080 0%, #005599 100%);
                transform: translateY(-2px);
                box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
            }

            .back-button:active {
                transform: translateY(0);
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

        </style>
    </head>
    <body>
        <div class="container">
            <h1>Chi tiết mặt hàng</h1>
            <div class="product-details">
                <table>
                    <tr>
                        <td>Mã mặt hàng</td>
                        <td><%= mathang052.getMaMH() %></td>
                    </tr>
                    <tr>
                        <td>Tên mặt hàng</td>
                        <td><%= mathang052.getTen() %></td>
                    </tr>
                    <tr>
                        <td>Giá bán</td>
                        <td><%= String.format("%,.0f VNĐ", mathang052.getGiaban()) %></td>
                    </tr>
                    <tr>
                        <td>Mô tả</td>
                        <td><%= mathang052.getMota() %></td>
                    </tr>
                </table>
            </div>
            
            <div class="back">
                <a href="GDTimKiemMH052.jsp" class="back-button">Quay lại</a>
            </div>
        </div>
    </body>
</html>