<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 보여주기</title>
<style>
	#container { width: 700px; margin: auto; }
	h1,h3,p { text-align: center; }
	table { border-collapse: collapse; }
	table, th, td {
		border: 1px solid black;
		margin: 0 auto;
	}
	th { background-color: azure; }
	#loginbtn {float: right;}
	.center{text-align: center;}
	.border-none, .border-none td {border: none;}
</style>
</head>
<body>
	<div id="container">
		<h1>${board.seq }번게시글 상세 보기</h1>
		<p>
			<a href="user/logout.do">로그아웃</a>
		</p>
		<form action="updateBoard.do" method="post">
			<input type="hidden" name="seq" value="${board.seq }">
			<table>
					<tr>
						<th>제목</th>
						<td>
							<input type="text" name="title" value="${board.title }">
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>
							<%-- <input type="text" name="writer" value="${board.writer }"> --%>
							${board.writer }
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea name="content" rows="10" cols="40">${board.content }</textarea>
						</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td>${board.regdate }</td>
					</tr>
					<tr>
						<th>조회수</th>
						<td>${board.cnt }</td>
					</tr>
					<tr>
						<td colspan="2" class="center">
							<input type="submit" value="수정">
						</td>
					</tr>
			</table>
		</form>
		<p>
			<a href="getBoardList.do">등록</a>
			<a href="deleteBoard.do?seq=${board.seq }">삭제</a>
			<a href="getBoardList.do">조회로 돌아가기</a>
		</p>
	</div>
</body>
</html>