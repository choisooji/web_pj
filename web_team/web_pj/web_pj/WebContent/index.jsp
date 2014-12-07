<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>청춘극장</title>
<link rel="stylesheet" type="text/css" href="./css/main.css" />
<script type="text/javascript" src="./scripts/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="./scripts/index.js"></script>
<script type="text/javascript">
	$(function() {
		$(window).ready(function() {
			$("body").height($(window).height());
		});
		$(window).resize(function() {
			$("body").height($(window).height());
		});
	});
</script>

</head>
<!-- INDEX PAGE -->
<body>
	<div class="wrap">
		<div class="login">
			<!--Login JSP-->
			<jsp:include page="./loginWidget.jsp" />
		</div>
		<div class="clear"></div>
		<div class="contents">
			<h1>청춘극장</h1>
				<div id = "header">
		<div class="navigation">
			<ul>		
				<a href="board.jsp">게시판</a>
				<a href="admin.jsp">관리자</a>
			</ul>
		</div>
		<div id="line"></div>
	</div>
			<div class="leftContents">
				<div class="leftInside" id="show" onclick="popup('show')">
					<img src="./images/index/lier.jpg" />
					<p>라이어</p>
				</div>
				<div class="leftInside" id="show1" onclick="popup('show1')">
					<img src="./images/index/dash.jpg" />
					<p>작업의 정석</p>
				</div>
				<div class="clear"></div>
				<div class="leftInside" id="show2" onclick="popup('show2')">
					<img src="./images/index/story.jpg" />
					<p>죽여주는 이야기</p>
				</div>
			<div class="leftInside" id="show3" onclick="popup('show3')">
				    <img src="./images/index/cats.jpg">
					<p>옥탑방 고양이</p>
				</div></div>
			<div class="rightContents">
				<a href="reservation.jsp"><img src="./images/index/reserveicon.jpg" />
					<p>Reservation</p>
				</a>
			</div>
			<div class="clear"></div>

		</div>

		<footer>
			상호 : 청춘극장 | 전화번호 : 010-9437-2647 | 주소 : 경기도 용인시 처인구 남동 <br>
			대표 : 조수현, 최수지| 사업자 등록번호 123-12-12345 |
		</footer>
	</div>

	<!--Virtual div For implements Popup -->
	<div class="popup" id="showPopup">

<style type="text/css">	
#table{					
	width:100%;
	height:100%;
	background: #3a3a3a;
-webkit-border-radius: 20px;
-moz-border-radius: 20px;
border-radius: 20px;
}
#left_head_div{
<!-- 맨윗줄 하나 div 시작 -->
	width:100%;
	height:10%;
	background: #3a3a3a;
	clear:both;	
}
#head_text{	
	float:left;
	font-size:15pt;
	width:97%;
	margin:1% 0 0 0;
	font-size:20pt;
	text-align:center;
	color: white;
}
#show_cancel_button{
	float:right;
	width:3%;
	height:60%;
}
#show_cancel_button img{
	width:100%;
	height:100%;
	cursor: pointer;
	border-radius: 10%;
}
#left_body_div{
	background: #c0c0c0;
	width:85%;
	height:90%;
	float:left;	
-webkit-border-top-right-radius: 30px;
-webkit-border-bottom-right-radius: 30px;
-moz-border-radius-topright: 30px;
-moz-border-radius-bottomright: 30px;
border-top-right-radius: 30px;
border-bottom-right-radius: 30px;
}
#left_body_big_pic{
	height:60%;
}
#left_body_big_pic img{
	margin:3% 0 0 10%;
	width:80%;
	height:90%;
	border-radius: 10px;	

}
#left_body_small_pic{
	height:40%;
	
	display:none;
}
#left_body_small_pic img{
	border-radius: 10px;
	width:15%;
	height:50%;
	margin:0 0 0 13.5%;
	cursor: pointer;
}
#right_sub_div{
	margin:3% 0 0 0;
	width:15%;
	height:80%;
	background: #3a3a3a;
	float:left;
}
#right_sub_div div{
	width:80%;
	height:15%;
	background: #3a3a3a;
	font-size:15pt;
	color: white;
}
#right_sub_div div:hover{
	width: 90%;
	height:20%;
	cursor: pointer;
	transition:all ease 0.5s;	
	background: #3a3a3a;
-webkit-border-top-right-radius: 500px;
-webkit-border-bottom-right-radius: 500px;
-moz-border-radius-topright: 500px;
-moz-border-radius-bottomright: 500px;
border-top-right-radius: 500px;
border-bottom-right-radius: 500px;	
}
</style>
<script type="text/javascript">
function show_contents(i){	
	if(i == 1){//  공연소개
		document.getElementById("head_text").innerHTML="줄거리";
		document.images["body_img"].src = "./images/index/liersynopsis.jpg";
		document.getElementById("left_body_small_pic").innerHTML = "라이어 줄거리";
		document.getElementById("left_body_small_pic").style.display = "none";
	}
	else if(i == 2){// 극장
		document.getElementById("head_text").innerHTML="극장 안내";
		document.images["body_img"].src = "./images/index/map.jpg";
		document.getElementById("left_body_small_pic").innerHTML= "<div style='width:95%; height:90%; background-color:#fff; font-size:12px; text-align:left; border-radius: 5%;' ><span style='color:#a828a8; font-size:16px;'>극장 : 브로드웨이 아트홀 1관<br/></style></span><span style='color:blue; font-size:14px;'>-지하철 :</style></span> 4호선 혜화역<br/><span style='color:blue; font-size:14px;'>- 버스 :</style></span> 간선: N16, 217, 109<br/></span></span>   지선: 2112, 1111</style></div>";
		document.getElementById("left_body_small_pic").style.display = "block";
	}
	else if(i == 3){// 배우
		document.getElementById("head_text").innerHTML="출연진 소개";
		document.images["body_img"].src ="./images/index/lieractor1.jpg";
		
		document.getElementById("left_body_small_pic").innerHTML="<img src ='./images/index/lieractor1.jpg' onmouseover='show_check(1)'/><img src ='./images/index/lieractor2.jpg' onmouseover='show_check(2)'/><img src ='./images/index/lieractor3.jpg' onmouseover='show_check(3)'/><img src ='./images/index/lieractor4.jpg' onmouseover='show_check(4)'/><img src ='./images/index/lieractor5.jpg' onmouseover='show_check(5)'/>";
		document.getElementById("left_body_small_pic").style.display = "block";
		family_check = 'c';
	}
	else{
		window.prompt("에러! change_content 에서 파라메터 잘못됨");
		}
}
function show_check(order){	
	if(family_check == 'c'){
		if(order == 1)
				document.images["body_img"].src = "./images/index/lieractor1.jpg";
		else if(order == 2)
				document.images["body_img"].src = "./images/index/lieractor2.jpg";
		else if(order == 3)
				document.images["body_img"].src = "./images/index/lieractor3.jpg";
		else if(order == 4)
				document.images["body_img"].src = "./images/index/lieractor4.jpg"; 
		else if(order == 5)
				document.images["body_img"].src = "./images/index/lieractor5.jpg";
		else{
			window.prompt("check에 order = 1 메소드 에러");
			}
		}
		else{
			window.prompt("check메소드 에러");
		}
}
<!--  -->
</script>
<div id="table">
		<div id="left_head_div">
			<div id="head_text"> 
				출연진 소개
			</div>	
		<div id="show_cancel_button">
					<img id="show_cancel_button_img" src="./images/tour/close.jpg" alt="cancel_button" 
					onmouseover="document.getElementById('show_cancel_button_img').src='./images/tour/closehover.jpg';"
					onmouseout="document.getElementById('show_cancel_button_img').src='./images/tour/close.jpg';" onclick="popupClear()"/>
				</div>
		</div>	
		<div id="left_body_div">
			<div id="left_body_big_pic">
				<img id="body_img" src="./images/index/liersynopsis.jpg" alt="main pict" />
			</div>
			<div id="left_body_small_pic">
				
			</div>
		</div>	
		<div id="right_sub_div">
			<div id="right_sub_sub1_div" class="right_sub_sub" onclick="show_contents(1)"> 	
			<br/>
			줄거리
			</div>	
			<div id="right_sub_sub2_div" class="right_sub_sub " onclick="show_contents(2)">
			<br/>
			극장 안내
			</div>
			<div id="right_sub_sub3_div" class="right_sub_sub" onclick="show_contents(3)">
			<br/>
			출연진 소개
			</div>
		</div>	
</div>
	
	
	
	</div>
<div class="popup" id="show1Popup">
<style type="text/css">	
#table{					
	width:100%;
	height:100%;
	background: #3a3a3a;
-webkit-border-radius: 20px;
-moz-border-radius: 20px;
border-radius: 20px;
}
#show1_left_head_div{
	width:100%;
	height:10%;
	background: #3a3a3a;
	clear:both;	
}
#show1_head_text{	
	float:left;
	font-size:15pt;
	width:97%;
	margin:1% 0 0 0;
	font-size:20pt;
	text-align:center;
	color: white;
}
#show1_cancel_button{
		float:right;
		width:3%;
		height:60%;
	}
#show1_cancel_button img{
		width:100%;
		height:100%;
		cursor: pointer;
		border-radius: 10%;
}
#show1_left_body_div{
	background: #c0c0c0;
	width:85%;
	height:90%;
	float:left;	
-webkit-border-top-right-radius: 30px;
-webkit-border-bottom-right-radius: 30px;
-moz-border-radius-topright: 30px;
-moz-border-radius-bottomright: 30px;
border-top-right-radius: 30px;
border-bottom-right-radius: 30px;
}
#show1_left_body_big_pic{
	height:60%;
}
#show1_left_body_big_pic img{
	margin:3% 0 0 10%;
	width:80%;
	height:90%;
	border-radius: 10px;	

}
#show1_left_body_small_pic{
	height:40%;
	
	display:none;
}
#show1_left_body_small_pic img{
	border-radius: 10px;
	width:15%;
	height:50%;
	margin:0 0 0 13.5%;
	cursor: pointer;
}
#right_sub_div{
	margin:3% 0 0 0;
	width:15%;
	height:80%;
	background: #3a3a3a;
	float:left;
}
#right_sub_div div{
	width:80%;
	height:15%;
	background: #3a3a3a;
	font-size:15pt;
	color:#white;
}
#right_sub_div div:hover{
	width: 90%;
	height:20%;
	cursor: pointer;
	transition:all ease 0.5s;	
	background: #3a3a3a;
-webkit-border-top-right-radius: 500px;
-webkit-border-bottom-right-radius: 500px;
-moz-border-radius-topright: 500px;
-moz-border-radius-bottomright: 500px;
border-top-right-radius: 500px;
border-bottom-right-radius: 500px;	
}
</style>
<script type="text/javascript">
function show1_contents(i){	
	if(i == 1){//  공연소개
		document.getElementById("show1_head_text").innerHTML="줄거리";
		document.images["show1_body_img"].src = "./images/index/dashsynopsis.jpg";
		document.getElementById("show1_left_body_small_pic").innerHTML = "작업의 정석 줄거리";
		document.getElementById("show1_left_body_small_pic").style.display = "none";
	}
	else if(i == 2){// 극장
		document.getElementById("show1_head_text").innerHTML="극장 안내";
		document.images["show1_body_img"].src = "./images/index/dashplace.jpg";
		document.getElementById("show1_left_body_small_pic").innerHTML= "<div style='width:95%; height:90%; background-color:#fff; font-size:12px; text-align:left; border-radius: 5%;' ><span style='color:#a828a8; font-size:16px;'>극장 : 대학로 올래홀(구두레홀2관)<br/></style></span><span style='color:blue; font-size:14px;'>-지하철 :</style></span> 4호선 혜화역<br/><span style='color:blue; font-size:14px;'>- 버스 :</style></span> 간선: N16, 102, 100<br/></span></span>   지선: 2112, 7025</style></div>";
		document.getElementById("show1_left_body_small_pic").style.display = "block";
	}
	else if(i == 3){// 배우
		document.getElementById("show1_head_text").innerHTML="출연진 소개";
		document.images["show1_body_img"].src ="./images/index/dashactor1.jpg";
		
		document.getElementById("show1_left_body_small_pic").innerHTML="<img src ='./images/index/dashactor1.jpg' onmouseover='show1_check(1)'/><img src ='./images/index/dashactor2.jpg' onmouseover='show1_check(2)'/><img src ='./images/index/dashactor3.jpg' onmouseover='show1_check(3)'/><img src ='./images/index/dashactor4.jpg' onmouseover='show1_check(4)'/><img src ='./images/index/dashactor5.jpg' onmouseover='show1_check(5)'/>";
		document.getElementById("show1_left_body_small_pic").style.display = "block";
		family_check = 'c';
	}
	else{
		window.prompt("에러! change_content 에서 파라메터 잘못됨");
		}
}
function show1_check(order){	
	if(family_check == 'c'){
		if(order == 1)
				document.images["show1_body_img"].src = "./images/index/dashactor1.jpg";
		else if(order == 2)
				document.images["show1_body_img"].src = "./images/index/dashactor2.jpg";
		else if(order == 3)
				document.images["show1_body_img"].src = "./images/index/dashactor3.jpg";
		else if(order == 4)
				document.images["show1_body_img"].src = "./images/index/dashactor4.jpg"; 
		else if(order == 5)
				document.images["show1_body_img"].src = "./images/index/dashactor5.jpg";
		else{
			window.prompt("check에 order = 1 메소드 에러");
			}
		}
		else{
			window.prompt("check메소드 에러");
		}
}
<!--  -->
</script>
<div id="table">
		<div id="show1_left_head_div">
			<div id="show1_head_text"> 
				출연진 소개
			</div>	
		<div id="show1_cancel_button">
					<img id="show1_cancel_button_img" src="./images/tour/close.jpg" alt="cancel_button" 
					onmouseover="document.getElementById('show1_cancel_button_img').src='./images/tour/closehover.jpg';"
					onmouseout="document.getElementById('show1_cancel_button_img').src='./images/tour/close.jpg';" onclick="popupClear()"/>
				</div>
		</div>	
		<div id="show1_left_body_div">
			<div id="show1_left_body_big_pic">
				<img id="show1_body_img" src="./images/index/dashsynopsis.jpg" alt="main pict" />
			</div>
			<div id="show1_left_body_small_pic">
				
			</div>
		</div>	
		<div id="right_sub_div">
			<div id="right_sub_sub1_div" class="right_sub_sub" onclick="show1_contents(1)"> 	
			<br/>
			줄거리
			</div>	
			<div id="right_sub_sub2_div" class="right_sub_sub " onclick="show1_contents(2)">
			<br/>
			극장 안내
			</div>
			<div id="right_sub_sub3_div" class="right_sub_sub" onclick="show1_contents(3)">
			<br/>
			출연진 소개
			</div>
		</div>	
</div>
	</div>

	
	<div class="popup" id="show2Popup">
	
<style type="text/css">	
#table{					
	width:100%;
	height:100%;
	background: #3a3a3a;
-webkit-border-radius: 20px;
-moz-border-radius: 20px;
border-radius: 20px;
}
#show2_left_head_div{
	width:100%;
	height:10%;
	background: #3a3a3a;
	clear:both;	
}
#show2_head_text{	
	float:left;
	font-size:15pt;
	width:97%;
	margin:1% 0 0 0;
	font-size:20pt;
	text-align:center;
	color: white;
}
#show2_cancel_button{
		float:right;
		width:3%;
		height:60%;
	}
#show2_cancel_button img{
		width:100%;
		height:100%;
		cursor: pointer;
		border-radius: 10%;
}
 #show2_left_body_div{
	background: #c0c0c0;
	width:85%;
	height:90%;
	float:left;	
-webkit-border-top-right-radius: 30px;
-webkit-border-bottom-right-radius: 30px;
-moz-border-radius-topright: 30px;
-moz-border-radius-bottomright: 30px;
border-top-right-radius: 30px;
border-bottom-right-radius: 30px;
}
#show2_left_body_big_pic{
	height:60%;
}
#show2_left_body_big_pic img{
	margin:3% 0 0 10%;
	width:80%;
	height:90%;
	border-radius: 10px;	

}
#show2_left_body_small_pic{
	height:40%;
	
	display:none;
}
#show2_left_body_small_pic img{
	border-radius: 10px;
	width:15%;
	height:50%;
	margin:0 0 0 13.5%;
	cursor: pointer;
}
#right_sub_div{
	margin:3% 0 0 0;
	width:15%;
	height:80%;
	background: #3a3a3a;
	float:left;
}
#right_sub_div div{
	width:80%;
	height:15%;
	background: #3a3a3a;
	font-size:15pt;
	color:#white;
}
#right_sub_div div:hover{
	width: 90%;
	height:20%;
	cursor: pointer;
	transition:all ease 0.5s;	
	background: #3a3a3a;
-webkit-border-top-right-radius: 500px;
-webkit-border-bottom-right-radius: 500px;
-moz-border-radius-topright: 500px;
-moz-border-radius-bottomright: 500px;
border-top-right-radius: 500px;
border-bottom-right-radius: 500px;	
}
</style>
<script type="text/javascript">
function show2_contents(i){	
	if(i == 1){//  공연소개
		document.getElementById("show2_head_text").innerHTML="줄거리";
		document.images["show2_body_img"].src = "./images/index/storysynopsis.jpg";
		document.getElementById("show2_left_body_small_pic").innerHTML = "작업의 정석 줄거리";
		document.getElementById("show2_left_body_small_pic").style.display = "none";
	}
	else if(i == 2){// 극장
		document.getElementById("show2_head_text").innerHTML="극장 안내";
		document.images["show2_body_img"].src = "./images/index/storyplace.jpg";
		document.getElementById("show2_left_body_small_pic").innerHTML= "<div style='width:95%; height:90%; background-color:#fff; font-size:12px; text-align:left; border-radius: 5%;' ><span style='color:#a828a8; font-size:16px;'>극장 : 대학로 삼형제 극장<br/></style></span><span style='color:blue; font-size:14px;'>-지하철 :</style></span> 4호선 혜화역<br/><span style='color:blue; font-size:14px;'>- 버스 :</style></span> 간선: N16, 102, 100<br/></span></span>   지선: 2112, 7025</style></div>";
		document.getElementById("show2_left_body_small_pic").style.display = "block";
	}
	else if(i == 3){// 배우
		document.getElementById("show2_head_text").innerHTML="출연진 소개";
		document.images["show2_body_img"].src ="./images/index/storyactor1.jpg";
		
		document.getElementById("show2_left_body_small_pic").innerHTML="<img src ='./images/index/storyactor1.jpg' onmouseover='show2_check(1)'/><img src ='./images/index/storyactor2.jpg' onmouseover='show2_check(2)'/><img src ='./images/index/storyactor3.jpg' onmouseover='show2_check(3)'/><img src ='./images/index/storyactor4.jpg' onmouseover='show2_check(4)'/><img src ='./images/index/storyactor5.jpg' onmouseover='show2_check(5)'/>";
		document.getElementById("show2_left_body_small_pic").style.display = "block";
		family_check = 'c';
	}
	else{
		window.prompt("에러! change_content 에서 파라메터 잘못됨");
		}
}
function show2_check(order){	
	if(family_check == 'c'){
		if(order == 1)
				document.images["show2_body_img"].src = "./images/index/storyactor1.jpg";
		else if(order == 2)
				document.images["show2_body_img"].src = "./images/index/storyactor2.jpg";
		else if(order == 3)
				document.images["show2_body_img"].src = "./images/index/storyactor3.jpg";
		else if(order == 4)
				document.images["show2_body_img"].src = "./images/index/storyactor4.jpg"; 
		else if(order == 5)
				document.images["show2_body_img"].src = "./images/index/storyactor5.jpg";
		else{
			window.prompt("check에 order = 1 메소드 에러");
			}
		}
		else{
			window.prompt("check메소드 에러");
		}
}
<!--  -->
</script>
<div id="table">
		<div id="show2_left_head_div">
			<div id="show2_head_text"> 
				출연진 소개
			</div>	
		<div id="show2_cancel_button">
					<img id="show2_cancel_button_img" src="./images/tour/close.jpg" alt="cancel_button" 
					onmouseover="document.getElementById('show2_cancel_button_img').src='./images/tour/closehover.jpg';"
					onmouseout="document.getElementById('show2_cancel_button_img').src='./images/tour/close.jpg';" onclick="popupClear()"/>
				</div>
		</div>	
		<div id="show2_left_body_div">
			<div id="show2_left_body_big_pic">
				<img id="show2_body_img" src="./images/index/storysynopsis.jpg" alt="main pict" />
			</div>
			<div id="show2_left_body_small_pic">
				
			</div>
		</div>	
		<div id="right_sub_div">
			<div id="right_sub_sub1_div" class="right_sub_sub" onclick="show2_contents(1)"> 	
			<br/>
			줄거리
			</div>	
			<div id="right_sub_sub2_div" class="right_sub_sub " onclick="show2_contents(2)">
			<br/>
			극장 안내
			</div>
			<div id="right_sub_sub3_div" class="right_sub_sub" onclick="show2_contents(3)">
			<br/>
			출연진 소개
			</div>
		</div>	
</div>
	</div>

	
		<div class="popup" id="show3Popup">
	
	
<style type="text/css">	
#table{					
	width:100%;
	height:100%;
	background: #3a3a3a;
-webkit-border-radius: 20px;
-moz-border-radius: 20px;
border-radius: 20px;
}
#show3_left_head_div{
	width:100%;
	height:10%;
	background: #3a3a3a;
	clear:both;	
}
#show3_head_text{	
	float:left;
	font-size:15pt;
	width:97%;
	margin:1% 0 0 0;
	font-size:20pt;
	text-align:center;
	color: white;
}
#show3_cancel_button{
		float:right;
		width:3%;
		height:60%;
	}
#show3_cancel_button img{
		width:100%;
		height:100%;
		cursor: pointer;
		border-radius: 10%;
}
 #show3_left_body_div{
	background: #c0c0c0;
	width:85%;
	height:90%;
	float:left;	
-webkit-border-top-right-radius: 30px;
-webkit-border-bottom-right-radius: 30px;
-moz-border-radius-topright: 30px;
-moz-border-radius-bottomright: 30px;
border-top-right-radius: 30px;
border-bottom-right-radius: 30px;
}
#show3_left_body_big_pic{
	height:60%;
}
#show3_left_body_big_pic img{
	margin:3% 0 0 10%;
	width:80%;
	height:90%;
	border-radius: 10px;	

}
#show3_left_body_small_pic{
	height:40%;
	
	display:none;
}
#show3_left_body_small_pic img{
	border-radius: 10px;
	width:15%;
	height:50%;
	margin:0 0 0 13.5%;
	cursor: pointer;
}
#right_sub_div{
	margin:3% 0 0 0;
	width:15%;
	height:80%;
	background: #3a3a3a;
	float:left;
}
#right_sub_div div{
	width:80%;
	height:15%;
	background: #3a3a3a;
	font-size:15pt;
	color:#white;
}
#right_sub_div div:hover{
	width: 90%;
	height:20%;
	cursor: pointer;
	transition:all ease 0.5s;	
	background: #3a3a3a;
-webkit-border-top-right-radius: 500px;
-webkit-border-bottom-right-radius: 500px;
-moz-border-radius-topright: 500px;
-moz-border-radius-bottomright: 500px;
border-top-right-radius: 500px;
border-bottom-right-radius: 500px;	
}
</style>
<script type="text/javascript">
function show3_contents(i){	
	if(i == 1){//  공연소개
		document.getElementById("show3_head_text").innerHTML="줄거리";
		document.images["show3_body_img"].src = "./images/index/catssynopsis.jpg";
		document.getElementById("show3_left_body_small_pic").innerHTML = "옥탑방 고양이  줄거리";
		document.getElementById("show3_left_body_small_pic").style.display = "none";
	}
	else if(i == 2){// 극장
		document.getElementById("show3_head_text").innerHTML="극장 안내";
		document.images["show3_body_img"].src = "./images/index/catsplace.jpg";
		document.getElementById("show3_left_body_small_pic").innerHTML= "<div style='width:95%; height:90%; background-color:#fff; font-size:12px; text-align:left; border-radius: 5%;' ><span style='color:#a828a8; font-size:16px;'>극장 : 대학로 틴틴홀<br/></style></span><span style='color:blue; font-size:14px;'>-지하철 :</style></span> 4호선 혜화역<br/><span style='color:blue; font-size:14px;'>- 버스 :</style></span> 간선: N16, 102, 100<br/></span></span>   지선: 2112, 7025</style></div>";
		document.getElementById("show3_left_body_small_pic").style.display = "block";
	}
	else if(i == 3){// 배우
		document.getElementById("show3_head_text").innerHTML="출연진 소개";
		document.images["show3_body_img"].src ="./images/index/catsactor1.jpg";
		
		document.getElementById("show3_left_body_small_pic").innerHTML="<img src ='./images/index/catsactor1.jpg' onmouseover='show2_check(1)'/><img src ='./images/index/storyactor2.jpg' onmouseover='show2_check(2)'/><img src ='./images/index/storyactor3.jpg' onmouseover='show2_check(3)'/><img src ='./images/index/storyactor4.jpg' onmouseover='show2_check(4)'/><img src ='./images/index/storyactor5.jpg' onmouseover='show2_check(5)'/>";
		document.getElementById("show3_left_body_small_pic").style.display = "block";
		family_check = 'c';
	}
	else{
		window.prompt("에러! change_content 에서 파라메터 잘못됨");
		}
}
function show3_check(order){	
	if(family_check == 'c'){
		if(order == 1)
				document.images["show3_body_img"].src = "./images/index/catsactor1.jpg";
		else if(order == 2)
				document.images["show3_body_img"].src = "./images/index/catsactor2.jpg";
		else if(order == 3)
				document.images["show3_body_img"].src = "./images/index/catsactor3.jpg";
		else if(order == 4)
				document.images["show3_body_img"].src = "./images/index/catsactor4.jpg"; 
		else if(order == 5)
				document.images["show3_body_img"].src = "./images/index/catsactor5.jpg";
		else{
			window.prompt("check에 order = 1 메소드 에러");
			}
		}
		else{
			window.prompt("check메소드 에러");
		}
}
<!--  -->
</script>
<div id="table">
		<div id="show3_left_head_div">
			<div id="show3_head_text"> 
				출연진 소개
			</div>	
		<div id="show3_cancel_button">
					<img id="show3_cancel_button_img" src="./images/tour/close.jpg" alt="cancel_button" 
					onmouseover="document.getElementById('show3_cancel_button_img').src='./images/tour/closehover.jpg';"
					onmouseout="document.getElementById('show3_cancel_button_img').src='./images/tour/close.jpg';" onclick="popupClear()"/>
				</div>
		</div>	
		<div id="show3_left_body_div">
			<div id="show3_left_body_big_pic">
				<img id="show3_body_img" src="./images/index/catssynopsis.jpg" alt="main pict" />
			</div>
			<div id="show3_left_body_small_pic">
				
			</div>
		</div>	
		<div id="right_sub_div">
			<div id="right_sub_sub1_div" class="right_sub_sub" onclick="show3_contents(1)"> 	
			<br/>
			줄거리
			</div>	
			<div id="right_sub_sub2_div" class="right_sub_sub " onclick="show3_contents(2)">
			<br/>
			극장 안내
			</div>
			<div id="right_sub_sub3_div" class="right_sub_sub" onclick="show3_contents(3)">
			<br/>
			출연진 소개
			</div>
		</div>	
</div>
	</div>

	
	<div class="blinder" id="blinder" onclick="popupClear()">
		<!--Blinder-->
	</div>

</body>
</html>
