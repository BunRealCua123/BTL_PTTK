<%@page import="Model.NVQuanly052"%>
<%@page import="Model.Khachhang052"%>
<%@page import="Model.Thanhvien052"%>
<%@page import="DAO.Thanhvien052DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Thanhvien052DAO thanhvien052DAO = new Thanhvien052DAO();
    Thanhvien052 thanhvien052 = new Thanhvien052();
    Khachhang052 khachhang052 = new Khachhang052();
    NVQuanly052 nVQuanly052 = new NVQuanly052();
    if(username!=null && password!=null) thanhvien052 = thanhvien052DAO.checkLogin(username, password);
    int id = thanhvien052.getId();
    if(id!=0){
        if(thanhvien052.getVaitro().equals("KH")){
            khachhang052.setTen(thanhvien052.getTen());
            khachhang052.setDiachi(thanhvien052.getDiachi());
            khachhang052.setNgaysinh(thanhvien052.getNgaysinh());
            khachhang052.setSdt(thanhvien052.getSdt());
            khachhang052.setEmail(thanhvien052.getEmail());
            khachhang052.setVaitro(thanhvien052.getVaitro());
            session.setAttribute("khachhang", khachhang052);
            response.sendRedirect("View\\Khachhang052\\GDChinhKH052.jsp");
        }
        else if(thanhvien052.getVaitro().equals("NVQL")){
            nVQuanly052.setTen(thanhvien052.getTen());
            nVQuanly052.setDiachi(thanhvien052.getDiachi());
            nVQuanly052.setNgaysinh(thanhvien052.getNgaysinh());
            nVQuanly052.setSdt(thanhvien052.getSdt());
            nVQuanly052.setEmail(thanhvien052.getEmail());
            nVQuanly052.setVaitro(thanhvien052.getVaitro());
            session.setAttribute("quanly", nVQuanly052);
            response.sendRedirect("View\\Quanly052\\GDChinhQuanly052.jsp");
        }
    }
    
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng Nhập</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
/*            justify-content: center;*/
            padding: 20px;
        }

        .login-wrapper {
            width: 90%;
            max-width: 400px;
            background: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            margin-top: 100px;
        }

        h1 {
            font-size: 1.8em;
            color: #2c3e50;
            margin-bottom: 20px;
        }

        .input-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .input-group label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }

        .login-button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            font-size: 1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-button:hover {
            background-color: #0056b3;
        }

        .error-message {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="login-wrapper">
        <h1>Đăng Nhập</h1>
        <form action="GDDangnhap.jsp" method="post">
            <div class="input-group">
                <label for="username">Tên đăng nhập</label>
                <input type="text" id="username" name="username" value="<%=username!=null? username:"" %>" required>
            </div>
            <div class="input-group">
                <label for="password">Mật khẩu</label>
                <input type="password" id="password" name="password" value="<%=password!=null? password:"" %>" required>
            </div>
            <button type="submit" class="login-button">Đăng Nhập</button>
        </form>
        <div class="error-message">
            <% 
                // Nếu có thông báo lỗi từ servlet
                if(thanhvien052.getId()==0){
                    if(username==null||password==null){ %>
                        <div style="color: red">Vui lòng nhập đầy đủ thông tin</div>
                    
            <%
                    }
                    else{ %>
                        <div style="color: red">Tài khoản hoặc mật khẩu không chính xác</div>
            <%
                    }
                }
            %>
        </div>
    </div>
</body>
</html>