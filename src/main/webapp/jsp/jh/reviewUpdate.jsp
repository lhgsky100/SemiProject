<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div class="review-title">
			이번 여행은 어떠셨나요? <br>
			다른 분들에게 공유해주세요.
		</div>
		<div class="review-write-de">
			<div></div>
			<div class="review-write-word">
				<div class="review-write-big">
					후기를 수정하시겠습니까?.
				</div>
				<div class="review-write-small">
					추가 문의사항은 고객 게시판을 이용바랍니다..
				</div>
			</div>
		</div>
		<form action="ReviewUpdateC" method="post" enctype="multipart/form-data">
			<input type="hidden" name="id" value="${param.id }">
		<div class="review-write-submit">
			<div>
				<div class="review-writeimg">
				<div>
				<img src="img/jh/${review.review_pic}"
						style="max-width: 300px;"> <input name="oldImg"
						type="hidden" value="${review.review_pic}"> <input
						type="file" name="pic_new">
				</div>
				</div>
					<div>
						<span class="star"> ★★★★★ <span>★★★★★</span> 
							<input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10"> 
							<input type="hidden" id="star_value"name="star_value" value="">
						</span>
					</div>
				</div>	
				<div class="review-blank">
				</div>
				<div class="review-write-detail">
					<div class="review-title-text">
						타이틀을 적어주세요.
					</div>
					<div class="review-title-input">
						<input class="input-box" type="text" name="title" placeholder="${review.review_title }">		
					</div>
					<div class="review-title-text2">
						후기를 적어주세요.
					</div>
					<div class="review-title-input2">
						<textarea class="input-box2" rows="" cols="" name="body" placeholder="${body }"></textarea>
					</div>
					<div class="place">
						<div class="place2" style="display: flex; gap: 10px;">
							<select name="place" class="select-styling">
								<option value="seoul">서울</option>
								<option value="busan">부산</option>						
								<option value="daegu">대구</option>
								<option value="incheon">인천</option>
								<option value="gwangju">광주</option>
								<option value="daejeon">대전</option>
								<option value="ulsan">울산</option>																								
								<option value="kyeonggido">경기도</option>
								<option value="chungcheong">충청도</option>
								<option value="gyeongsang ">경상도</option>										
								<option value="jeolla">전라도</option>	
								<option value="gangwon">강원도</option>
								<option value="jeju ">제주도</option>
							</select>
								<div class="review-detailbutton" >
									<button class="review-detailbutton" onclick="goBack()">&nbsp;뒤로가기</button>
										<div>
									<button class="review-detailbutton">&nbsp;&nbsp;Submit</button>
									</div>
								</div>
							<div>		
						</div>
					</div>				
				</div>
			</div>
		</div>
		</form>
	</div>
</body>
</html>