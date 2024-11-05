<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.Hoadonnhap052"%>
<%@page import="DAO.Hoadonnhap052DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%
    String maNCC = request.getParameter("maNCC");
    String bd = request.getParameter("bd");
    String kt = request.getParameter("kt");
    SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat outputFormat = new SimpleDateFormat("dd/MM/yyyy");
    ArrayList<Hoadonnhap052> dsHoadonnhap = new ArrayList<>();
    Hoadonnhap052DAO hoadonnhap052DAO = new Hoadonnhap052DAO();
    dsHoadonnhap = hoadonnhap052DAO.getDSHoadonnhap(maNCC, bd, kt);
    Hoadonnhap052 hoadonnhap052 = new Hoadonnhap052();
    if(dsHoadonnhap.size()>0){
        hoadonnhap052 = dsHoadonnhap.get(0);
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách hóa đơn nhập</title>
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
            width: 70%;
            max-width: 1200px;
            margin: 30px auto;
            padding: 30px;
            background-color: white;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
            border-radius: 20px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            font-size: 2em;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 1px;
            position: relative;
            padding-bottom: 15px;
        }

        h2:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 3px;
            background: linear-gradient(to right, #3498db, #2ecc71);
        }

        .info-section {
            background-color: #f8f9fa;
            border-radius: 12px;
            padding: 20px;
            margin: 20px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
            font-weight: 500;
        }

        .ncc, .thongke {
            display: grid;
/*            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));*/
            gap: 15px;
            margin-bottom: 20px;
        }

        .ncc div:first-child, .thongke div:first-child {
            font-weight: 700;
            color: #34495e;
            font-size: 1.1em;
            grid-column: 1 / -1;
            border-bottom: 2px solid #e1e1e1;
            padding-bottom: 10px;
            margin-bottom: 10px;
        }

        .ncc div, .thongke div {
            padding: 8px 0;
        }

        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            margin-top: 30px;
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
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

        td {
            padding: 15px;
            border-bottom: 1px solid #e1e1e1;
            text-align: center;
            color: #444;
        }

        tr:hover {
            background-color: #f8f9fa;
            transition: background-color 0.3s ease;
        }

        td:first-child {
            font-weight: 500;
            color: #2c3e50;
        }

        td:nth-child(5) {
            color: #27ae60;
            font-weight: 500;
        }

        .container {
            animation: fadeIn 0.5s ease-out;
        }
        .hoadon:hover{
            background-color: #f5f9f5;
            cursor: pointer;
        }
        .hoadon:hover td{
            color: #3498db;
        }
        
    </style>
</head>
<body>
    <div class="container">
        <h2>Danh sách hóa đơn nhập</h2>
        <%if(dsHoadonnhap.size()>0){ 
            String ngaybd = outputFormat.format(inputFormat.parse(bd));
            String ngaykt = outputFormat.format(inputFormat.parse(kt));
        %>
            <div class="info-section">
                <div class="ncc">
                    <div>Thông tin NCC:</div>
                    <div>Mã NCC: <%=hoadonnhap052.getNcc().getMaNCC()%></div>
                    <div>Tên NCC: <%=hoadonnhap052.getNcc().getTen()%></div>
                </div>
            </div>

            <div class="info-section">
                <div class="thongke">
                    <div>Thời gian thống kê:</div>
                    <div>
                        <span style="padding-right: 30px ">Ngày bắt đầu: <%=ngaybd %></span>
                        <span>Ngày kết thúc: <%=ngaykt %></span>
                    </div>
                </div>
            </div>
        <%} %>
        <table>
            <tr>
                <th>TT</th>
                <th>Mã HD nhập</th>
                <th>Mã NCC</th>
                <th>Nhân viên kho</th>
                <th>Tổng tiền</th>
                <th>Ngày tạo</th>
            </tr>
            <%
                
                int dem=1;
                for (Hoadonnhap052 hdn : dsHoadonnhap) {
                    Date ngaytao = inputFormat.parse(hdn.getNgaytao());
                    String ngaytaoNew = outputFormat.format(ngaytao);
            %>
            <tr class="hoadon" onclick="window.location.href='<%= request.getContextPath() + "/View/Quanly052/GDChitietHDnhap052.jsp?maHDN=" + hdn.getMaHDN() %>';">
                    <td><%= dem %></td>
                    <td><%= hdn.getMaHDN() %></td>
                    <td><%= hdn.getNcc().getMaNCC() %></td>
                    <td><%= hdn.getNvkho().getTen() %></td>
                    <td><%= String.format("%,.0f VNĐ", hdn.getTongtien()) %></td>
                    <td><%= ngaytaoNew %></td>
                </tr>
            <%
                    dem++;
                }
            %>
        </table>
    </div>
</body>
</html>