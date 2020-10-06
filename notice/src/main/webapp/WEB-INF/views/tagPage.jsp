<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
     <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>   
      <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tagPage</title>
</head>
<style>
   @media (max-width: 1500px){
   body {
      margin: 0;
         padding: 0;
        width: 100%;
       height: 100%;
         font-family: 'Nanum Gothic Coding', monospace;
         background-color:#f5f7fa;
   }
    * {
        box-sizing: border-box;
    }

   .header {
      display: block;
      width: 100%;
      height: 10%;
      padding: 5% 8% 3% 4%;
      border-bottom: 1px solid lightgray;
   }
   .tag_title {
      font-size: 2.5vh;
      font-weight: 600;
   }
   .go_home {
      display: block;
      float: right;
      font-size: 2.8vh;
      font-weight: 600;
      cursor: pointer;
   }
   
    .tags {
        width: 100%;
        display: block;
        margin-top: 7.5%;
        padding: 2%;
    }

    .tags div{
        display: inline-block;
        width: auto;
        margin: 1%;
        padding: 1% 2% 1% 2%;
        border-radius: 8px;
        background-color: #ccd3db;
        cursor: pointer;
    }

    .tags button{
        font-size: 1.8vh;
        background: none;
        border: none;
        cursor: pointer;
    }

    .tags span{
        margin: 0px 3px 0px 3px;
        color: #FF6C6C;
    }
}




</style>
<body>
   <div class="header">
      <span class="tag_title">태그 삭제</span>
      <span class="go_home" onclick="location.href='/index';">X</span>
   </div>
    <div class="tags">
    <c:forEach var="tag_name" items="${tagNameList}">
      <div><button class="delete_btn" onclick="location.href='/tagPage/${tag_name}'" >${tag_name}&nbsp;<span>X</span></button></div>
    </c:forEach>
    </div>
    

</body>
</html>