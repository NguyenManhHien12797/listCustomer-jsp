<%@ page import="com.example.listcustomerjsp.Customers" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 8/18/2022
  Time: 3:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        table{
            border-collapse:collapse;
            width: 1000px;
            position: center;

        }
        table, th, td{
            border:1px solid black;
        }
        #title{
            background: aqua;
            font-size: 40px;
            text-align: center;
        }
    </style>
</head>
<%
    List<Customers> customersList= new ArrayList<>();
    customersList.add(new Customers("Hiền","1997-05-20","HN","https://viettelhochiminh.com.vn/wp-content/uploads/2022/05/hhinh-anh-luffy-chibi-thu-the-rat-ngau_055520104.jpg"));
    customersList.add(new Customers("Nam","1998-06-21","DN","https://img.meta.com.vn/Data/image/2021/10/08/hinh-anh-luffy-dep-15.jpg"));
    customersList.add(new Customers("Hoàng","1999-09-22","BN","https://benhvienthammykangnam.vn/wp-content/uploads/2022/02/luffy.jpg"));
    customersList.add(new Customers("Hiếu","2000-06-23","BG","https://inkythuatso.com/uploads/thumbnails/800/2022/03/2665651-15-15-34-30.jpg"));
    customersList.add(new Customers("Phương","2001-08-26","HCM","https://gamek.mediacdn.vn/133514250583805952/2022/3/24/edit-gomu5-16481146527081869928951.jpeg"));

    request.setAttribute("listCustomer",customersList);
%>
<body>
<table>
    <tr id="title">
        <td>Tên</td>
        <td>Ngày sinh</td>
        <td>Địa chỉ</td>
        <td>Ảnh</td>
    </tr>

    <c:forEach items="${listCustomer}" var="list">
        <tr>
            <td> ${list.name}</td>
            <td>${list.dateBirth}</td>
            <td>${list.address}</td>
            <td width="200px" height="200px"><img src="${list.img}" width="200px" height="200px"></td>
        </tr>

    </c:forEach>

</table>
</body>
</html>
