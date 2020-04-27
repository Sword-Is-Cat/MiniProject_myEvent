<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <title>QNA - 글쓰기</title>
    
    <style type="text/css">
        #title{
            height : 16;
            font-family :'돋움';
            font-size : 12;
            text-align :center;
        }
      
    </style>
    
</head>
<body>
 
    <br>
    <b><font size="8"  color="#000000">QNA등록</font></b>
    <br>
    
    <form method="post" action=" EvBoard?command=insert" name="board" enctype="multipart/form-data">
    <input type="hidden" name="command" value="insert"/>
    <input type="hidden" name="User_id" value="${sessionScope.sessionID}">
    <table width="700" border="3" bordercolor="lightgray" align="center">
        <tr>
            <td id="title">작성자</td>
            <td>${sessionScope.sessionID}</td>
        </tr>
        <td id="title">행사종류</td>
       		  <td><input type="radio" name="chclass" value=""/>행사종류
        	<input type="radio" name="chclass" value=""/>행사종류
        	<input type="radio" name="chclass" value=""/>행사종류
        	<input type="radio" name="chclass" value=""/>행사종류
        	<input type="radio" name="chclass" value=""/>행사종류
        	<input type="radio" name="chclass" value=""/>행사종류
       </td> 
            <tr>
         	
            <td id="title">
                제 목
            </td>
          
            <td>
                <input name="board_subject" type="text" size="70" maxlength="100" value=""/>
            </td>        
        </tr>
            
        <tr>
            <td id="title">
                내 용
            </td>
            <td>
                <textarea name="board_content" cols="72" rows="20"></textarea>            
            </td>        
        </tr>

 
        <tr align="center" valign="middle">
            <td colspan="5">
                <input type="reset" value="작성취소" >
                <input type="submit" value="등록" >
                <input type="button" onClick="EvBoard()" value="목록" >            
            </td>
        </tr>
    </table>    
    </form>
    
</body>
</html>