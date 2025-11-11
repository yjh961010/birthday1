<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #fce6f9, #e0f7fa);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-box {
            background-color: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 0 20px rgba(0,0,0,0.2);
            text-align: center;
        }
        input {
            width: 200px;
            padding: 10px;
            margin: 10px 0;
            border-radius: 10px;
            border: 1px solid #ccc;
            font-size: 1em;
        }
        button {
            padding: 10px 20px;
            font-size: 1em;
            border-radius: 10px;
            border: none;
            background-color: #ff66b2;
            color: #fff;
            cursor: pointer;
        }
        .error {
            color: red;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>💌 로그인</h2>
        <form method="post" action="/login">
            <c:if test="${not empty error}">
                <div class="error">${error}</div>
            </c:if>
            <input type="text" name="userid" placeholder="핸드폰 번호(뒷자리4자리)" required><br>
            <input type="password" name="password" placeholder="생일(4자리 ex> 1010)" required><br>
            <button type="submit">로그인</button>
        </form>
    </div>
</body>
</html>
