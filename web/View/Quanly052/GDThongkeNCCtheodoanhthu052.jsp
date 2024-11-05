<%@page import="Model.ThongkeNCC052"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ThongkeNCC052DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String bd = (String)request.getParameter("startDate");
    String kt = (String)request.getParameter("endDate");
    ThongkeNCC052DAO thongkeNCC052DAO = new ThongkeNCC052DAO();
    ArrayList<ThongkeNCC052> dsNCC = new ArrayList<>();
    if(bd!=null &&kt!=null){
        dsNCC = thongkeNCC052DAO.getThongkeNCC(bd, kt);
        System.out.println(dsNCC.size());
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thống kê NCC</title>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
        
    </head>
    <body>
        <div class="container">
            <h1>Thống kê NCC theo doanh thu</h1>

            <form method="get" action="GDThongkeNCCtheodoanhthu052.jsp">
                <div class="filter">
                    <label for="startDate">Ngày bắt đầu:</label>
                    <input type="date" id="startDate" name="startDate" value="<%= request.getParameter("startDate") != null ? request.getParameter("startDate") : "" %>" required >

                    <label for="endDate">Ngày kết thúc:</label>
                    <input type="date" id="endDate" name="endDate" value="<%= request.getParameter("endDate") != null ? request.getParameter("endDate") : "" %>" required>

                    <button type="submit">Thống kê</button>
                </div>
            </form>

            <table>
                <thead>
                    <tr>
                        <th style="width: 4%">TT</th>
                        <th style="width: 25%">Tên NCC</th>
                        <th style="width: 34%">Địa chỉ</th>
                        <th style="width: 20%">Số lượng hàng nhập</th>
                        <th>Doanh thu</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        if(bd!=null&&kt!=null){
                            int dem=1;
                            for (ThongkeNCC052 ncc : dsNCC) {
                    %>
                    <tr class="ncc" onclick="window.location.href='<%= request.getContextPath() + "/View/Quanly052/GDDSHoadonnhapNCC052.jsp?maNCC=" + ncc.getMaNCC()+"&bd="+bd+"&kt="+kt %>';">
                        <td><%= dem %></td>
                        <td><%= ncc.getTen() %></td>
                        <td><%= ncc.getDiachi() %></td>
                        <td style="text-align: center"><%= ncc.getSohangnhap() %></td>
                        <td><%= String.format("%,.0f VNĐ", ncc.getDoanhthu())%></td>
                    </tr>
                    <%      
                                dem++;
                            }
                        }
                        if(dsNCC.isEmpty()){
                    %>
                    <tr>
                        <td colspan="5">Không tìm thấy NCC nào!</td>
                    </tr>
                    <% 
                        } 
                    %>
                </tbody>
            </table>
        </div>
    </body>
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
        }

        .container {
            width: 70%;
            max-width: 1200px;
            margin: 30px auto;
            padding: 30px;
            background-color: white;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
            border-radius: 20px;
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

        .filter {
            background-color: #f8f9fa;
            padding: 25px;
            border-radius: 12px;
            margin: 30px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            gap: 20px;
        }

        .filter label {
            color: #34495e;
            font-weight: 500;
            font-size: 0.95em;
        }

        .filter input[type="date"] {
            padding: 10px 15px;
            border: 2px solid #e1e1e1;
            border-radius: 8px;
            font-size: 0.95em;
            transition: all 0.3s ease;
        }

        .filter input[type="date"]:focus {
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.3);
        }

        .filter button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px 25px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .filter button:hover {
            background-color: #2980b9;
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
            font-size: 0.9em;
            letter-spacing: 0.5px;
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

        .ncc {
            transition: all 0.3s ease;
        }

        td:first-child {
            font-weight: 500;
            color: #2c3e50;
        }
        td:last-child {
            color: #27ae60;
            font-weight: 500;
        }
        .ncc:hover {
            background-color: #f5f9f5;
            /*transform: scale(1.01);*/
            cursor: pointer;
            /*box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);*/
        }

        .ncc:hover td {
            color: #3498db;
        }

        tr td[colspan="5"] {
            padding: 30px;
            text-align: center;
            color: #7f8c8d;
            font-style: italic;
        }


    </style>
</html>