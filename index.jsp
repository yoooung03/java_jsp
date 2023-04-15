<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>board</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    
<!--     <style>
        /* 로그인 폼 스타일 */
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #f1f1f1;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.3);
        }

        form input {
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #fff;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        }

        form input:focus {
            outline: none;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.3);
        }

        form label {
            font-weight: bold;
            margin-bottom: 10px;
        }

        /* 로그인 버튼 스타일 */
        .login-btn {
            margin-top: 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px;
            width: 100%;
            transition: all 0.3s ease-in-out;
        }

        .login-btn:hover {
            background-color: #0069d9;
            cursor: pointer;
        }
    </style> -->
    
	<script>
        function openLoginPopup() {
            window.open("login.html", "Login", "width=400, height=300");
        }
       
        function openLoginPopup() {
          var userId = document.getElementById("userId").value;
          var password = document.getElementById("password").value;

          if (!userId) {
            alert("아이디를 입력해주세요.");
            return;
          }
          if (!password) {
            alert("비밀번호를 입력해주세요.");
            return;
          }

          var bulletinWindow = window.open("bulletin.html", "Bulletin");
          var chattingWindow = window.open("chatting.html", "Chatting");
          var loginWindow = window.open("login.html", "Login");
        }
        /* function checkLogin() {
            // 저장된 아이디와 비밀번호
            var savedId = "12345";
            var savedPassword = "password";

            // 입력된 아이디와 비밀번호
            var userId = document.getElementById("userId").value;
            var password = document.getElementById("password").value;

            // 아이디와 비밀번호가 일치하는 경우
            if (userId === savedId && password === savedPassword) {
                // 게시판이 있는 새 창 열기
                window.open("board.html", "_blank", "width=800,height=600");
            } else {
                // 일치하지 않는 경우 알림창 띄우기
                alert("아이디나 비밀번호가 일치하지 않습니다.");
            }
        } 
        참조해주세요!*/
     </script>

</head>
<body>
    <h1>
        교내 분실물 게시판
    </h1>
    <!-- <div class="mx-auto row mt-4" style="width: 300px; height: 40px;">
        <form>
            <label for="userId">아이디(학번/직번):</label>
            <input type="text" title="userId" id="userId" placeholder="아이디(학번/직번)"><br>
            <label for="password">비밀번호(학교 비번):</label>
            <input data-placement="bottom" title="password" type="password" id="password" class="password" placeholder="비밀번호(학교 비번)"><br>
            <a href="#" class="btn btn-primary active" role="button" onclick="openLogin()"><button class="login-btn" type="submit">로그인</button></a>

        </form>
    </div> 
    여기가 style 양식에 지원되는 부분입니다!!
    헷갈리실 것 같아서 주석으로 달아요!
    -->
    <form action=""></form>
        <div class="mx-auto row mt-4" style="width: 348px; height: 40px;">
        <a href="#" class="btn btn-primary active" role="button"  onclick="openLoginPopup()">Login</a>
        <a href="#" class="btn btn-primary active" role="button"  onclick="openLoginPopup()">Bulletin</a>
        <a href="#" class="btn btn-primary active" role="button"  onclick="openLoginPopup()">Chat</a>
        </div>

        <div class="input_wrap" style="height:48px">
            <input type="text" title="userId" id="userId" placeholder="아이디(학번/직번)">
            <label for="userId"></label>
        </div>

        <div class="input_wrap" id="inputWrapPw" style="height:48px;">
            <input data-placement="bottom" title="password" type="password" id="password" class="password" placeholder="비밀번호(학교 비번)">
            <label for="password"></label>
        </div>
        <a href="javascript:actionLogin();" class="btn_login"><span>로그인</span></a>

        <div class="search_list" style="padding-top: 100px;">
            <form action="#" method="get">
                    <div class="sel_l">
        
                        <label for="category_id" class="jw_skip"> 분류선택</label>
                        <select id="category_id" name="search:search_category:category" class="selDomain" onKeyDown="javascript:if(event.keyCode == 13) CategoryList(this.form);">
                            <option value="" >전체</option> 
                                <option value="116" > 분실</option>
                                <option value="117" > 습득</option>                       
                        </select>
                                                
                    </div>
             
            <div class="sel_r">
                    <fieldset>
                    
                        <legend>게시글 검색</legend>					
                        <select class="selDomain" id="search_key" name="search:search_key:search_or" title="검색내용 선택">
                            <option value="article_text"  >전체</option>
                            <option value="article_title"  >제목</option>
                            <option value="article_text"  >내용</option>
                        </select>
                        <input type="hidden" id="search_key2" name="search:search_key2:search_or" value="article_title"/>
                        <span class="selSch"><input type="text" class="ipt_search" name="search:search_val:search_or" id="search_val" value="" title="검색입력란"></span>
                        <button type="submit" title="검색" class="btn_search">검색</button>
                        
                    </fieldset>
                
            </div>
            </form>
        </div>
        <a href="/sc/research/research.jsp" ><span><span>게시판</span></span></a>				
			
			<div class="menuwrap">
				<div class="inner">
                </div>
			</div>
		
</body>
</html>
