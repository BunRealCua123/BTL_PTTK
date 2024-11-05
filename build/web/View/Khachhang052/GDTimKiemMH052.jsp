<%@page import="DAO.Mathang052DAO"%>
<%@page import="Model.Mathang052"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    int k = 1;
    ArrayList<Mathang052> dsMH = new ArrayList<Mathang052>();
    Mathang052DAO mathang052DAO = new Mathang052DAO();
    String keyword = request.getParameter("keyword");
    try {
            dsMH = mathang052DAO.getDSMathang(keyword);
            if(dsMH.size()==0) k=0;
        } catch (Exception e) {
            k=0;
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Search Product</title>
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
                /*padding: 20px;*/
            }

            .container {
                width: 70%;
                max-width: 1200px;
                margin: 30px auto;
                padding: 30px;
                background-color: white;
                box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
                border-radius: 20px;
                transition: transform 0.3s ease;
                /*min-height: 700px;*/
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

            .search-bar {
                text-align: center;
                margin-bottom: 30px;
                display: flex;
                justify-content: center;
                gap: 15px;
            }

            .search-bar input[type="text"] {
                width: 70%;
                padding: 12px 20px;
                border: 2px solid #e1e1e1;
                border-radius: 8px;
                font-size: 16px;
                transition: all 0.3s ease;
            }

            .search-bar input[type="text"]:focus {
                outline: none;
                border-color: #3498db;
                box-shadow: 0 0 8px rgba(76, 175, 80, 0.3);
            }

            .search-bar input[type="submit"] {
                padding: 12px 30px;
                background-color: #3498db;
                color: white;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                font-size: 16px;
                font-weight: 500;
                transition: all 0.3s ease;
            }

            .search-bar input[type="submit"]:hover {
                background-color: #3498dc;
                transform: translateY(-2px);
            }

            table {
                width: 100%;
                border-collapse: separate;
                border-spacing: 0;
                margin-top: 20px;
            }

            th {
                background-color: #34495e;
                color: white;
                font-weight: 500;
                padding: 15px;
                text-transform: uppercase;
                font-size: 14px;
                /*letter-spacing: 0.5px;*/
            }

            th:first-child {
                border-top-left-radius: 8px;
            }

            th:last-child {
                border-top-right-radius: 8px;
            }

            td {
                padding: 15px;
                border-bottom: 1px solid #e1e1e1;
                color: #444;
            }

            .mathang {
                transition: all 0.3s ease;
            }

            .mathang:hover {
                background-color: #f5f9f5;
                /*transform: scale(1.01);*/
                cursor: pointer;
            }

            .mathang td {
                transition: all 0.3s ease;
            }

            .mathang:hover td {
                color: #3498db;
            }

            /* Responsive design */
            @media (max-width: 768px) {
                .container {
                    width: 95%;
                    padding: 20px;
                }

                .search-bar {
                    flex-direction: column;
                }

                .search-bar input[type="text"] {
                    width: 100%;
                }

                table {
                    display: block;
                    overflow-x: auto;
                }

                h1 {
                    font-size: 1.8em;
                }
            }

            /* Empty state styling */
            tr td[colspan="4"] {
                padding: 30px;
                text-align: center;
                color: #666;
                font-style: italic;
                background-color: #f9f9f9;
            }

            /* Price column styling */
            td:nth-child(3) {
                color: #e44d26;
                font-weight: 500;
            }

            /* ID column styling */
            td:first-child {
                font-weight: 500;
                color: #2c3e50;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>TÌM KIẾM MẶT HÀNG</h1>

            <!-- Form tìm kiếm -->
            <form action="GDTimKiemMH052.jsp" method="get" class="search-bar">
                <input type="text" name="keyword" placeholder="Enter product name" value="<%=keyword!=null? keyword:"" %>">
                <input type="submit" value="Search">
            </form>

            <!-- Hiển thị kết quả -->
            <table class="result-table">
                <thead>
                    <tr>
                        <th style="width: 12%">Mã mặt hàng</th>
                        <th style="width: 26%">Tên mặt hàng</th>
                        <th style="width: 15%">Giá bán</th>
                        <th>Mô tả</th>
                    </tr>
                </thead>
                <tbody>
                    <% if (k == 1 && dsMH.size()>0) { %>
                        <%
                            // Duyệt qua danh sách các sản phẩm và hiển thị ra bảng
                            for (Mathang052 product : dsMH) {
                        %>
                            <tr class="mathang" onclick="window.location.href='<%= request.getContextPath() + "/View/Khachhang052/GDChitietMH052.jsp?maMH=" + product.getMaMH() %>';">
                                <td><%= product.getMaMH() %></td>
                                <td><%= product.getTen() %></td>
                                <td style="text-align: center"><%= String.format("%,.0f VNĐ", product.getGiaban()) %></td>
                                <td><%= product.getMota() %></td>
                            </tr>
                        <%
                            }
                        %>
                    <% } else { %>
                        <tr>
                            <td colspan="4">Không tìm thấy sản phẩm nào!</td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </body>
</html>