<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
         "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- <%@ page import="java.util.*, java.text.*,catalog.*,javax.servlet.*" %> -->
<html>
  <head>
                <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../styles/reset.css">
        <link rel="stylesheet" href="../styles/source.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../styles/login.js"></script>

      <title>Товар</title>
  </head>
  <body>
    <div id = 'main_div'>
      <div>
      </div>
        <div id = 'main_center'>
           <div class = 'ps'>
              <script >genPage()</script>
            </div>
        </div>
        <div id = 'main_right'>
          <% if(session.getAttribute("username") != null ){
              out.print("<script>genPage('"+ session.getAttribute("username") + "')</script>");       
              out.print("<br><h2>"+session.getAttribute("name")+ " " + session.getAttribute("surname")+"</h2><br>");
            }
          %>
          <a class = 'back' href = 'http://localhost:8080/website/catalog'>Назад</a>
           <%  
          if(session.getAttribute("username") != null) {
            out.print("<a class = 'logout' href = 'http://localhost:8080/website/catalog/logout'>выйти </a> <br>");
            if(session.getAttribute("isCreator").equals("true"))
              out.print("<a class = 'addProc' href = 'http://localhost:8080/website/addproduct'>Добавить</a>");
           %>  
          <% } else { %>
            <a href = 'http://localhost:8080/website/catalog'>Каталог</a>
            <a href = "http://localhost:8080/website/login">Войти</a>
            <a href = 'http://localhost:8080/website/singup'>Зарегестрироваться</a>
          <% } %>

        </div>
    </div>
   
  </body>
</html>
