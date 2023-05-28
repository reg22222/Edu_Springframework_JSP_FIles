<%@ page import="java.util.List"%>
<%@ page import="jeonggeun.spring.web.board.impl.BoardDAO"%>
<%@ page import="jeonggeun.spring.web.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/myboard/resources/css/style.css" rel="stylesheet" />
<title>Board List</title>
<form action="getBoardList.do" method="post">
	<table>
		<tr>
			<td><select class="box" name="searchCondition">
					<c:forEach items="${conditionMap }" var="option">
						<option value="${option.value }">${option.key }</option>
					</c:forEach>
					<option value="TITLE">제목</option>
					<option value="CONTENT">내용</option>
			</select></td>
			<td><input type="text" name="searchKeyword" /></td>
			<td><input type="submit" value="검색" /></td>
		</tr>
	</table>
</form>
<br />
<br />
<a href="insertBoard.jsp"><input type="submit" value="새글 작성" /></a>
</body>
</html>