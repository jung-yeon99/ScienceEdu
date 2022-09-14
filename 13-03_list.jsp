<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "ch_13.board_b_05.BoardDBBean" %>
<%@ page import = "ch_13.board_b_05.BoardDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ include file="color.jspf"%>
<html>
		<head>
<style>
body {
  font-family: "Lucida Sans Typewriter", "Lucida Console", Monaco, "Bitstream Vera Sans Mono", monospace;
  margin: 0px;
  padding: 50px;
  background: #e1e1e1;
}
.menu {
  position: relative;
  height: 60px;
  background: #2b2f3a;
  width: auto;
}
.menu ul {
  list-style: none;
  padding: 0;
  margin: 0;
  line-height: 1;
}
.menu > ul {
  position: relative;
  display: block;
  background: #000000;
  width: 100%;
  z-index: 500;
}
.menu:after, .menu > ul:after {
  content: ".";
  display: block;
  clear: both;
  visibility: hidden;
  line-height: 0;
  height: 0;
}
.menu.align-right > ul > li {
  float: right;
}
.menu.align-center ul {
  text-align: center;
}
.menu.align-center ul ul {
  text-align: left;
}
.menu > ul > li {
  display: inline-block;
  position: relative;
  margin: 0;
  padding: 0;
}
.menu > ul > #menu-button {
  display: none;
}
.menu ul li a {
  display: block;
  font-family: Helvetica, sans-serif;
  text-decoration: none;
}
.menu > ul > li > a {
  font-size: 25px;
  font-weight: bold;
  padding: 20px 25px;
  color: #fff;
  text-transform: uppercase;
  -webkit-transition: color 0.25s ease-out;
  -moz-transition: color 0.25s ease-out;
  -ms-transition: color 0.25s ease-out;
  -o-transition: color 0.25s ease-out;
  transition: color 0.25s ease-out;
}
.menu > ul > li.sub > a {
  padding-right: 32px;
}
.menu > ul > li:hover > a {
  color: #ffffff;
}
.menu li.sub::after {
  display: block;
  content: "";
  position: absolute;
  width: 0;
  height: 0;
}
.menu > ul > li.sub::after {
  right: 10px;
  top: 20px;
  border: 5px solid transparent;
  border-top-color: #7a8189;
}
.menu > ul > li:hover::after {
  border-top-color: #ffffff;
}
.menu ul ul {
  position: absolute;
  left: -9999px;
  top: 70px;
  opacity: 0;
  -webkit-transition: opacity .3s ease, top .25s ease;
  -moz-transition: opacity .3s ease, top .25s ease;
  -ms-transition: opacity .3s ease, top .25s ease;
  -o-transition: opacity .3s ease, top .25s ease;
  transition: opacity .3s ease, top .25s ease;
  z-index: 1000;
}
.menu ul ul ul {
  top: 37px;
  padding-left: 5px;
}
.menu ul ul li {
  position: relative;
}
.menu > ul > li:hover > ul {
  left: auto;
  top: 44px;
  opacity: 1;
}
.menu.align-right > ul > li:hover > ul {
  left: auto;
  right: 0;
  opacity: 1;
}
.menu ul ul li:hover > ul {
  left: 170px;
  top: 0;
  opacity: 1;
}
.menu.align-right ul ul li:hover > ul {
  left: auto;
  right: 170px;
  top: 0;
  opacity: 1;
  padding-right: 5px;
}
.menu ul ul li a {
  width: 130px;
  border-bottom: 1px solid #eeeeee;
  padding: 10px 20px;
  font-size: 20px;
  color: #000000;
  background: #ffffff;
  -webkit-transition: all .35s ease;
  -moz-transition: all .35s ease;
  -ms-transition: all .35s ease;
  -o-transition: all .35s ease;
  transition: all .35s ease;
}
.menu.align-right ul ul li a {
  text-align: right;
}
.menu ul ul li:hover > a {
  background: #f2f2f2;
  color: #8c9195;
}
.menu ul ul li:last-child > a, .menu ul ul li.last > a {
  border-bottom: 0;
}
.menu > ul > li > ul::after {
  content: '';
  border: 6px solid transparent;
  width: 0;
  height: 0;
  border-bottom-color: #ffffff;
  position: absolute;
  top: -12px;
  left: 30px;
}
.menu.align-right > ul > li > ul::after {
  left: auto;
  right: 30px;

.menu.align-right ul ul li.sub::after {
  border-left-color: transparent;
  border-right-color: #9ea2a5;
  right: auto;
  left: 10px;
}
.menu ul ul li.sub:hover::after {
  border-left-color: #ffffff;
  right: -5px;
  -webkit-transform: rotateY(180deg);
  -ms-transform: rotateY(180deg);
  -moz-transform: rotateY(180deg);
  -o-transform: rotateY(180deg);
  transform: rotateY(180deg);
}
.menu.align-right ul ul li.sub:hover::after {
  border-right-color: #ffffff;
  border-left-color: transparent;
  left: -5px;
  -webkit-transform: rotateY(180deg);
  -ms-transform: rotateY(180deg);
  -moz-transform: rotateY(180deg);
  -o-transform: rotateY(180deg);
  transform: rotateY(180deg);
}

</style>

		<title>과학 정보 포털 사이언스에듀</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css"/>

	</head>
	<body>
	
	
		<div class='menu'>
			<ul>
			<br>
			&nbsp&nbsp&nbsp&nbsp&nbsp<a href="index.html"><img src="images/logoo.jpg" width="400" height="70"> </a>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			
			<li>
					<a href='index.html'>HOME</a>
				</li>
				<li>
					<a href='intro.html'>소개</a>
				</li>
				<li class='active sub'>
					<a href='grade12.html'>학년</a>
					<ul>
						<li class='sub'>
							<a href='grade12.html'>1,2학년</a>
							
						</li>
						<li class='sub'>
							<a href='grade34.html'>3,4학년</a>
							
						</li>
						<li class='sub'>
							<a href='grade5.html'>5학년</a>
							
						</li>
						<li class='sub'>
							<a href='grade6.html'>6학년</a>
							
						</li>
					</ul>
				</li>
				<li class='active sub'>
					<a href='physics.html'>과목</a>
					<ul>
						<li class='sub'>
							<a href='physics.html'>물리</a>
							
						</li>
						<li class='sub'>
							<a href='chemistry.html'>화학</a>
							
						</li>
						<li class='sub'>
							<a href='earth.html'>지구과학</a>
							
						</li>
						<li class='sub'>
							<a href='life.html'>생명과학</a>
							
						</li>
					</ul>
				</li>
				<li>
					<a href='news.html'>뉴스</a>
				</li>
				<li>
					<a href='13-03_list.jsp'>QnA</a>
				</li>
				
				
			</ul>
		</div>
		</center>

		<!-- One -->
			<section id="One" class="wrapper style3">
				<div class="inner">
					<header class="align-center">
						<p>QnA</p>
						<h2>QnA</h2>
					</header>
				</div>
			</section>


		<!-- Main -->
	
<div style="position:relative; width:1000px; left:50% ; margin-left:-500px;">
<%!
    int pageSize = 10;  //한 페이지의 글 수
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
    String pageNum = request.getParameter("pageNum");

    if (pageNum == null) {
        pageNum = "1";
    }

    int currentPage = Integer.parseInt(pageNum);
    int startRow = (currentPage - 1) * pageSize + 1;
    int endRow = currentPage * pageSize;
    int count = 0;
    int number = 0;
    List<BoardDataBean> articleList = null; 
    
    BoardDBBean dbPro = BoardDBBean.getInstance();
    count = dbPro.getArticleCount();
    
    if (count > 0) {
        articleList = dbPro.getArticles(startRow, pageSize);
    }

	number = count-(currentPage-1)*pageSize; //현재 페이지에서 갯수??
%>


<body bgcolor="<%=bodyback_c%>">

<section class="section">
			
<center>
<p>글목록(전체 글:<%=count%>)</p>
</center>
<center>
<table>
  <tr>
    <td align="right" bgcolor="<%=value_c%>">
       <a href="13-01_writeForm.jsp">글쓰기</a>
    </td>
  </tr>
</table>

<% if (count == 0) { %>

<table>
<tr>
    <td align="center">
              게시판에 저장된 글이 없습니다.
    </td>
</table>

<% } else {%>
<table> 
    <tr height="30" bgcolor="<%=value_c%>"> 
      <td align="center"  width="50"  >번 호</td> 
      <td align="center"  width="250" >제   목</td> 
      <td align="center"  width="100" >작성자</td>
      <td align="center"  width="150" >작성일</td> 
      <td align="center"  width="50" >조 회</td> 
      <td align="center"  width="100" >IP</td>    
    </tr>
<%  
   for (int i = 0 ; i < articleList.size() ; i++) {
       BoardDataBean article = articleList.get(i);
%>
   <tr height="30">
    <td  width="50" > <%=number--%></td>
    <td  width="250" align="left">
<%
	int wid=0; 
	if(article.getRe_level()>0){  // 답변글인 경우
	   wid=5*(article.getRe_level()); //들여쓰기 길이
%>
	  <img src="images/level.png" width="<%=wid%>" height="16">
	  <img src="images/re.png">
<%  }else{%>
	  <img src="images/level.png" width="<%=wid%>" height="16">
<%  }%>
           
      <a href="13-04_content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
           <%=article.getSubject()%></a> 
<% if(article.getReadcount()>=20){%>
         <img src="images/hot.png" border="0"  height="16"><%}%> </td>
    <td width="100" align="left"> 
       <a href="mailto:<%=article.getEmail()%>">
                     <%=article.getWriter()%></a></td>
    <td width="150"><%= sdf.format(article.getReg_date())%></td>
    <td width="50"><%=article.getReadcount()%></td>
    <td width="100" ><%=article.getIp()%></td>
  </tr>
<%}%>
</table>
<%}%>

<%
    if (count > 0) {
        int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1); //페이지수
		int startPage =1;
		
		if(currentPage % 10 != 0)
           startPage = (int)(currentPage/10)*10 + 1;
		else
           startPage = ((int)(currentPage/10)-1)*10 + 1;

		int pageBlock = 10; // 몇 페이지 보여줄건가
        int endPage = startPage + pageBlock - 1;
        if (endPage > pageCount) endPage = pageCount;
        
        if (startPage > 10) { %>
          <a href="13-03_list.jsp?pageNum=<%= startPage - 10 %>">[이전]</a>
<%      }
        
        for (int i = startPage ; i <= endPage ; i++) {  %>
           <a href="13-03_list.jsp?pageNum=<%= i %>">[<%= i %>]</a>
<%      }
        
        if (endPage < pageCount) {  %>
        <a href="13-03_list.jsp?pageNum=<%= startPage + 10 %>">[다음]</a>
<%
        }
    }
%>
</center>
</section>
</body>
</div>
</html>