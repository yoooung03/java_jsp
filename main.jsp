<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>분실물 게시판</title>
    <link rel="stylesheet"
        href="https://s3.ap-northeast-2.amazonaws.com/materials.spartacodingclub.kr/easygpt/default.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <style>
        .hero {
            background-color: white;
        }

        .hero img {
            margin-left: -80px;
            margin-right: 50px;
        }

        .hero h1,
        .hero h2 {
            margin-left: 50px;
        }

        .header-right {
            float: right;
            font-size: 20px;
            margin-top: 20px;
            text-align: center;
        }
        .container:nth-of-type(2) {
            margin-top: 50px;
        }
		body {
  			font-size: 16px;
  			color: #333;
		}

		/* 미디어 쿼리 - 태블릿 */

		@media (min-width: 768px) {
  		body {
    		font-size: 18px;
  		}
		}

		/* 미디어 쿼리 - 데스크탑 */

		@media (min-width: 1200px) {
  		body {
    		font-size: 20px;
  		}
		}
    </style>
</head>

<body>

    <section class="hero text-black">
        <div class="container">
            <div class="header-right">
    			<button type="button" class="btn btn-primary me-2">로그인</button>
    			<button type="button" class="btn btn-outline-primary">회원가입</button>
			</div>

            <img src="logo.png" style="float: left; margin-top: 5px;">
            <h1 class="mb-4" style="margin-top: 15px">GNU 분실물 게시판</h1>
            <h2 class="mb-4" style="margin-top: 15px">분실물을 찾아드립니다!</h2>
        </div>
        <div class="container" style="margin-top:80px">
            <div class="row">
                <div class="col-md-6">
                    <div class="card mb-3">
                        <div class="card-header">
                            <h1 class="card-title">분실</h1>
                        </div>
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                <%-- 분실 글 목록 --%>
                                <li class="list-group-item">첫 번째 분실 글</li>
                                <li class="list-group-item">두 번째 분실 글</li>
                                <li class="list-group-item">세 번째 분실 글</li>
                                <li class="list-group-item">네 번째 분실 글</li>
                                <li class="list-group-item">다섯번째 분실 글</li>
								<%-- ... --%>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card mb-3">
                        <div class="card-header">
                            <h1 class="card-title">습득</h1>
                        </div>
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                <!-- 습득 글 목록 -->
                                <li class="list-group-item">첫 번째 습득 글</li>
                                <li class="list-group-item">두 번째 습득 글</li>
                                <li class="list-group-item">세 번째 습득 글</li>
                                <li class="list-group-item">네 번째 분실 글</li>
                                <li class="list-group-item">다섯 번째 분실 글</li>
                                <!-- ... -->
                            </ul>
                        </div>
                    </div>
				</div>
			</div>
		</div>
	</section>
</body>

</html>