<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Welcome To 청춘극장</title>
<link rel="stylesheet" type="text/css" href="./css/main.css" />
<script type="text/javascript" src="./scripts/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="./scripts/joincheck.js"></script>
</head>
<script type="text/javascript">
	function price(show, number, price) {
		var show = document.getElementById(show);
		var number = document.getElementById(number);
		var price = document.getElementById(price);

		price.value = show.value * number.value;

		return;
	}

	function total() {
		var price1 = parseInt(document.getElementById("showPrice1").value);

		sum = price1;
		document.getElementById("total").value = sum;

		return sum;
	}

	<!--
	-->
</script>
<body>
	<div class="wrap">
		<div class="login">
			<!--Reservation JSP-->
			<jsp:include page="./loginWidget.jsp" />
		</div>
		<div class="clear"></div>
		<div class="contents">

			<a href="./index.jsp"><h1>Welcome To 청춘극장</h1></a>

			<div class="content">
				<table id="itemTable">

					<tbody>
						<tr>
							<td>공연 이름</td>
							<td><select id="show"
								onChange="price('show', 'showNu', 'showPrice1')">
									<option value="0">선택안함</option>
									<option value="30000">라이어</option>
									<option value="30000">작업의 정석</option>
									<option value="30000">죽여주는 이야기</option>
									<option value="30000">옥탑방 고양이</option>
							</select></td>
						</tr>

						<tr>
							<td>날짜</td>
							<td><select id="showDa">
									<option value="1">1일</option>
									<option value="2">2일</option>
									<option value="3">3일</option>
									<option value="4">4일</option>
									<option value="5">5일</option>
									<option value="6">6일</option>
									<option value="7">7일</option>
									<option value="8">8일</option>
									<option value="9">9일</option>
									<option value="10">10일</option>
									<option value="11">11일</option>
									<option value="12">12일</option>
									<option value="13">13일</option>
									<option value="14">14일</option>
									<option value="15">15일</option>
									<option value="16">16일</option>
									<option value="17">17일</option>
									<option value="18">18일</option>
									<option value="19">19일</option>
									<option value="20">20일</option>
									<option value="21">21일</option>
									<option value="22">22일</option>
									<option value="23">23일</option>
									<option value="24">24일</option>
									<option value="25">25일</option>
									<option value="26">26일</option>
									<option value="27">27일</option>
									<option value="28">28일</option>
									<option value="29">29일</option>
									<option value="30">30일</option>
									<option value="31">31일</option>
							</select></td>
						</tr>

						<tr>
							<td>매수</td>
							<td><select id="showNu"
								onChange="price('show', 'showNu', 'showPrice1');total()">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
							</select></td>
							<td><input type="text" id="showPrice1" value="0" readonly />
							</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<th colspan="2">총금액</th>
							<th><input type="text" id="total" readonly></th>
							<th><a href="확인"><input type="button" value="확인"></a></th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
