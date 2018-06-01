<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD:HT_BBS_Example/BBS/WebContent/update.jsp
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter"%>
    <%@ page import="bbs.Bbs"%>
    <%@ page import="bbs.BbsDAO"%>
<!DOCTYPE html > 
=======
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<!DOCTYPE html>
>>>>>>> 6ffa27af4cd312c34f2fc151942687a3e10bc9ba:WebContent/view.jsp
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>U-CAMPUS</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
<<<<<<< HEAD:HT_BBS_Example/BBS/WebContent/update.jsp
		if(userID==null){
			PrintWriter script=response.getWriter();
			script.println("alert('로그인을 하세요.')");
			script.println("<script>");
			script.println("location.href='login.jsp'");
			script.println("</script>");
		}
		
		int bbsID=0;
		if(request.getParameter("bbsID")!=null){
			bbsID=Integer.parseInt(request.getParameter("bbsID"));
=======
		int bbsID = 0;
		if (request.getParameter("bbsID") != null) {
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
>>>>>>> 6ffa27af4cd312c34f2fc151942687a3e10bc9ba:WebContent/view.jsp
		}
		if (bbsID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
<<<<<<< HEAD:HT_BBS_Example/BBS/WebContent/update.jsp
		Bbs bbs= new BbsDAO().getBbs(bbsID);
		if(!userID.equals(bbs.getUserID())){

			PrintWriter script=response.getWriter();
			script.println("alert('권한이 없습니다.')");
			script.println("<script>");
			script.println("location.href='login.jsp'");
			script.println("</script>");
		}
		
	%>
   <nav class="navbar navbar-default">
      <div class="navbar-header">
         <button type="button"class= "navbar-toggle collapsed"
         data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
         aria-expanded="false">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="main.jsp"> DB hw1 test</a>
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <ul class="nav navbar-nav">
            <li><a href="main.jsp">메인</a></li>
            <li class="active"><a href="bbs.jsp">게시판</a></li>
         </ul>
           <ul class="nav navbar-nav navbar-right">
            <li class ="dropdown">
               <a href="#" class="dropdown-toggle"
                  data-toggle="dropdown" role = "button" aria-haspopup="true"
                  aria-expanded="false"> 회원관리<span class ="caret"></span></a>
               <ul class="dropdown-menu">
                     <li><a href="logoutAction.jsp">로그아웃</a></li>             
              </ul>
            </li>
         </ul>
      </div>
   </nav>
   <%// 여기서 부터 테이블 %>
   <div class="container">
	   	<div class="row">
		   	<form method="post" action="updateAction.jsp?bbsID=<%= bbsID%>">
		   		<table class="table table-striped" style="text-align:center; border : 1px solid #dddddd">
		   			<thead>
		   				<tr>
		   					<th colspan="2" style="background-color : #eeeeee; text-align: center;">게시판 글 수정 양식 </th>
		   				</tr>
		   			</thead>
		   			<tbody>
		   				<tr>
		   					<td><input type="text" class ="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" value="<%=bbs.getBbsTitle() %>"></td>
		   				</tr>
		   				<tr>
		   					<td><textarea class ="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;"><%=bbs.getBbsContent() %></textarea></td>
		   				</tr>
		   			</tbody>
		   		</table>
		   		<input type="submit" class="btn btn-primary pull-right" value="수정">
		   </form>
	   	</div>   	
   </div>
   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="js/bootstrap.js"></script>
=======
		Bbs bbs = new BbsDAO().getBbs(bbsID);
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp"> U-CAMPUS</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li class=active><a href="bbs.jsp">게시판</a></li>
			</ul>

			<%
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> 접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>

					</ul></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> 회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>

					</ul></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: ipx solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"
							style="background-color: #eeeeee; text-align: center;">게시판 글
							보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2"><%=bbs.getBbsTitle()%></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%=bbs.getUserID()%></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"><%=bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시"
					+ bbs.getBbsDate().substring(14, 16) + "분"%></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; text-align: left;"><%=bbs.getBbsContent()%></td>
					</tr>
				</tbody>
			</table>

		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
>>>>>>> 6ffa27af4cd312c34f2fc151942687a3e10bc9ba:WebContent/view.jsp
</body>
</html>