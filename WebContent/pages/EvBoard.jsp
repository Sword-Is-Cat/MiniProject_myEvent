<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
    <title>EVQNA등록</title>
    
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
 
<div id="wrap">
    <br>
    <div id="evboard">
        <c:if test="${sessionScope.sessionID!=null}">
            <input type="button" value="글쓰기" onclick="evBoardWrite()"; >
        
        </c:if>    
    </div>
    <br>
    <div id="board">
        <table id="bList" width="800" border="3" bordercolor="lightgray">
            <tr heigh="30">
                <td>글번호</td>
                 <td>종류</td>
                <td>제목${EvBoard.title }</td>
                <td>작성자${EvBoard.user}</td>
                <td>작성일</td>
                <td>조회수</td>
            </tr>    
           
        </table>
    </div>
    <tbody>
			<c:choose>
			    
				<c:otherwise>
			<c:forEach items="${list}"  var="notice" varStatus="state">
			<tr class="accordion-toggle" data-toggle="collapse" data-target="#no${EvBoard.no}" >
				<td>${EvBoard.no}</td>
				<td>${EvBoard.title}</td>
				<td>${EvBoard.user}</td>
				<td>${EvBoard.date}</td>
<%-- 				<td>${EvBoard.}</td> --%>
<%-- 				<td>${EvBoard.delete}</td> --%>
				
				
				
			</tr>
			<tr class="accordion-body collapse" id="no5">
				<td></td>
				<td >${EvBoard.contents}</td>
				<td></td>
				
			</tr>
        	</c:forEach>
        	</c:otherwise>
        </c:choose>
		</tbody>
		
	</table>
    <br>

    <br>
    <div id="evb">
        <form>
            <select name="opt">
            	<option value="1">전체${evBoardAll }</option>
                <option value="2">글번호${evBoardNo }</option>
                <option value="3">제목${evBoardtitle }</option>
                <option value="4">작성자${evBoardUser }</option>
            </select>
            <input type="text" size="20" name="condition"/>&nbsp;
            <input type="submit" value="검색"/>
        </form>    
    </div>
</div>       
 
</body>
</html>