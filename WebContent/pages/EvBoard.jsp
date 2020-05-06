<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>My Event :: 행사와 함께 하는 모든 순간</title>

   <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
   <!-- ** Plugins Needed for the Project ** -->
  <!-- Bootstrap -->
  <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/bootstrap/bootstrap.min.css">
   <!-- FontAwesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/fontawesome/font-awesome.min.css">
   <!-- Animation -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/animate.css">
   <!-- Prettyphoto -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/prettyPhoto.css">
   <!-- Owl Carousel -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/owl/owl.carousel.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/owl/owl.theme.css">
   <!-- Flexslider -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/flex-slider/flexslider.css">
   <!-- Flexslider -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/cd-hero/cd-hero.css">
   <!-- Style Swicther -->
   <link id="style-switch" href="${pageContext.request.contextPath}/pages/css/presets/preset3.css" media="screen" rel="stylesheet" type="text/css">

  <!-- Main Stylesheet -->
  <link href="${pageContext.request.contextPath}/pages/css/style.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/pages/css/defaultStyle.css" rel="stylesheet">
  <!--Favicon-->
   <link rel="icon" href="./images/favicon/32.png" type="image/x-icon" />
   <link rel="apple-touch-icon-precomposed" sizes="144x144" href="./images/favicon/144.png">
   <link rel="apple-touch-icon-precomposed" sizes="72x72" href="./images/favicon/72.png">
   <link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
  <!-- webFont -->
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    
    <style type="text/css">
        #wrap {
            width: 800px;
            margin: 0 auto 0 auto;
        }
        #topForm{
            text-align :right;
        }
        #board, #pageForm, #searchForm{
            text-align :center;
        }
        
        #bList{
            text-align :center;
        }
    </style>
    
    <script type="text/javascript">
        function evBoardWrite(){
            location.href="evBoardWrite.jsp";
        }
    </script>
    
</head>
<body>    

 

 <c:import url="headerTop.jsp"/>
<!--subTopMenu end-->   

<c:import url="header.jsp"></c:import>



<div id="wrap">
    <br>
    <div id="evboard">
           
    </div>
    <br>
    <input  type=button value="글쓰기" OnClick="window.location='evBoardWrite.jsp'">
    <div id="board">
        <table id="bList" width="800" border="3" bordercolor="lightgray">
            <tr heigh="30">
                <td>글번호</td>
                 <td>회원번호</td>
                <td>내용</td>
                <td>시간</td>
            </tr>    
            <tr heigh="30">
                <td>${event.evNo}</td>
                 <td>${user.userNo}</td>
                <td>${evBard.evBardConten}</td>
                <td>${evBoard.evBardTime}</td>
            </tr>    
           
        </table>
    </div>
   
      
   
    <br>

    <br>
    <div id="evb">
        <form align="center" >
            <select name="opt">
               <option value="1">전체</option>
                <option value="2">글번호</option>
                <option value="3">제목</option>
                <option value="4">작성자</option>
            </select>
            <input type="text" size="20" name="condition"/>&nbsp;
            <input type="submit" value="검색"/>
        </form>    
    </div>
</div>       
 <!-- footer -->
<c:import url="footer.jsp"></c:import>
</body>
</html>