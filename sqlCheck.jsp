<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://127.0.0.1/shop?&useSSL=false&serverTimezone=UTC"; 
        String username="root";  
        String password="Zzq123456";  
        Connection conn=DriverManager.getConnection(url,username,password);
        if(conn!=null){
            out.println("mysql数据库连接成功！！！");
        }else{
            out.println("数据库连接失败！！！");
        } 
    }catch(ClassNotFoundException e){
        e.printStackTrace();
    }
%>
</body>
</html>