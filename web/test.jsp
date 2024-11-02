<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.Hoadonnhap052"%>
<%@page import="DAO.Hoadonnhap052DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết hóa đơn nhập</title>
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
                color: #2c3e50;
            }

            .container {
                width: 80%;
                max-width: 1200px;
                margin: 30px auto;
                padding: 40px;
                background-color: white;
                box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
                min-height: 500px;
                border-radius: 20px;
                /*animation: slideIn 0.5s ease-out;*/
            }

            .header {
                text-align: center;
                margin-bottom: 35px;
                padding-bottom: 20px;
/*                border-bottom: 3px solid #3498db;*/
                position: relative;
            }

            .header:after {
                content: '';
                position: absolute;
                bottom: -3px;
                left: 50%;
                width: 100px;
                height: 3px;
                background: linear-gradient(to right, #3498db, #2ecc71);
                transform: translateX(-50%);
            }

            .header h1 {
                color: #2c3e50;
                font-size: 28px;
                margin: 0;
                text-transform: uppercase;
                letter-spacing: 1px;
            }

            .info-section {
                /*background-color: #f8f9fa;*/
                padding: 25px 25px 0px 25px;
                margin-bottom: 0px;
                /*box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);*/
            }

            .info-item {
                margin-bottom: 15px;
                display: flex;
                align-items: center;
                padding: 10px 0;
                border-bottom: 1px solid #eee;
            }

            .info-item:last-child {
                border-bottom: none;
            }

            .info-label {
                width: 250px;
                color: #34495e;
                font-weight: 500;
                font-size: 1.1em;
            }

            table {
                width: 100%;
                border-collapse: separate;
                border-spacing: 0;
                margin: 0px 0px 30px 0px;
                border-radius: 8px;
                overflow: hidden;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
            }

            th {
                background-color: #34495e;
                color: white;
                padding: 15px;
                text-align: left;
                font-weight: 500;
                font-size: 0.95em;
                text-transform: uppercase;
                letter-spacing: 0.5px;
            }

            td {
                padding: 15px;
                border-bottom: 1px solid #eee;
                color: #444;
            }

            tbody tr:last-child td {
                border-bottom: none;
            }

            tr:hover {
                background-color: #f8f9fa;
                transition: background-color 0.3s ease;
            }

            td:first-child {
                font-weight: 500;
                color: #2c3e50;
            }

            .total {
                text-align: right;
                font-size: 1.2em;
                font-weight: 500;
                padding: 20px;
                margin-top: 20px;
                color: red;
            }

           
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <h1>Chi tiết hóa đơn nhập</h1>
            </div>

            <div class="info-section">
                <div class="info-item">
                    <span class="info-label">Mã hóa đơn nhập:</span>
                    <span>HDN001</span>
                </div>
                <div class="info-item">
                    <span class="info-label">Mã NCC:</span>
                    <span>NCCC001</span>
                </div>
                <div class="info-item">
                    <span class="info-label">Tên NCC:</span>
                    <span>HELLO HELLO</span>
                </div>
                <div class="info-item">
                    <span class="info-label">Nhân viên kho tạo hóa đơn:</span>
                    <span>Kiều Văn Hiếu</span>
                </div>
                <div class="info-item">
                    <span class="info-label">Ngày tạo HĐ:</span>
                    <span>20/10/2024</span>
                </div>
                <div class="info-item" style="margin-bottom: 0px">
                    <span class="info-label">Danh sách mặt hàng:</span>
                </div>
            </div>
            
            <table>
                <thead>
                    <tr>
                        <th>TT</th>
                        <th>Mã MH</th>
                        <th>Tên MH</th>
                        <th>Số lượng</th>
                        <th>Đơn giá</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>MH001</td>
                        <td>Siêu máy tính</td>
                        <td>30</td>
                        <td>300.000.000 VNĐ</td>
                    </tr>
                </tbody>
            </table>

            <div class="total">
                Tổng tiền: 18719923892904 vnđ
            </div>
        </div>
    </body>
</html>