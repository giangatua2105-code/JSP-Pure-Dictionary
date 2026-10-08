<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Ket qua tra cuu</title>
        <style>
            body { font-family: Arial, sans-serif; display: flex; justify-content: center; align-items: center; min-height: 100vh; background: linear-gradient(135deg, #667eea, #764ba2); margin: 0; }
            .result-container { background: white; padding: 40px; border-radius: 12px; box-shadow: 0 20px 40px rgba(0,0,0,0.2); text-align: center; width: 420px; }
            .back-btn { text-decoration: none; padding: 10px 20px; background: #1b2a7a; color: white; border-radius: 6px; display: inline-block; margin-top: 20px; }
            .back-btn:hover { background: #121c54; }
        </style>
    </head>
    <body>
        <div class="result-container">
            <h2 style="color: #1b2a7a;">KET QUA TRA CUU</h2>
            
            <%
                request.setCharacterEncoding("UTF-8");
                String searchWord = request.getParameter("search");
                
                Map<String, String> dic = new HashMap<>();
                dic.put("hello", "Xin chao");
                dic.put("how", "The nao");
                dic.put("book", "Quyen sach");
                dic.put("computer", "May tinh");
                dic.put("student", "Sinh vien");
                dic.put("teacher", "Giao vien");
                dic.put("school", "Truong hoc");
                
                String result = null;
                if (searchWord != null && !searchWord.trim().isEmpty()) {
                    result = dic.get(searchWord.trim().toLowerCase());
                }
            %>
            
            <%
                if (result != null) {
            %>
                <p style="font-size: 18px; color: #555;">Tu can tra: <b style="color: #1b2a7a;"><%= searchWord %></b></p>
                <div style="background-color: #e8f5e9; padding: 15px; border-radius: 8px; margin-top: 20px;">
                    <h3 style="color: #27ae60; font-size: 24px; margin: 0;">Nghia la: <%= result %></h3>
                </div>
            <%
                } else {
            %>
                <div style="background-color: #ffebee; padding: 15px; border-radius: 8px; margin-top: 20px;">
                    <h3 style="color: #c0392b; margin: 0;">Khong tim thay!</h3>
                    <p style="color: #555;">Tu khoa <b style="color: #c0392b;"><%= searchWord %></b> khong co trong tu dien.</p>
                </div>
            <%
                }
            %>
            
            <a href="index.jsp" class="back-btn">Quay lai trang chu</a>
        </div>
    </body>
</html>