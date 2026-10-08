<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Tu dien Anh - Viet</title>
        <style>
            body { font-family: Arial, sans-serif; display: flex; justify-content: center; align-items: center; min-height: 100vh; background: linear-gradient(135deg, #667eea, #764ba2); margin: 0; }
            .dictionary-container { background: white; padding: 40px; border-radius: 12px; box-shadow: 0 20px 40px rgba(0,0,0,0.2); text-align: center; width: 350px; }
            h2 { color: #1b2a7a; margin-bottom: 25px; }
            input { padding: 12px; margin: 15px 0; width: 100%; border: 1px solid #ccc; border-radius: 6px; box-sizing: border-box; font-size: 16px; }
            button { background: #1b2a7a; color: white; padding: 12px; border: none; border-radius: 6px; cursor: pointer; width: 100%; font-weight: bold; font-size: 16px; margin-top: 10px; }
            button:hover { background: #121c54; }
        </style>
    </head>
    <body>
        <div class="dictionary-container">
            <h2>Tu Dien Anh - Viet</h2>
            <form action="dictionary.jsp" method="POST">
                <input type="text" name="search" placeholder="Nhap tu tieng Anh..." required autofocus />
                <button type="submit">Tim kiem</button>
            </form>
        </div>
    </body>
</html>