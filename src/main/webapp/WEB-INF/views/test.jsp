<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Test Image</title>
</head>
<body>
    <h1>이미지 테스트</h1>
    <p>이미지가 보이면 성공!</p>

    <!-- context path 적용 -->
    <img src="${pageContext.request.contextPath}/images/ahri.jpg" alt="ahri" width="300">

</body>
</html>
