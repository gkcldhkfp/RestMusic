<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
    crossorigin="anonymous">
    <link href="./css/common.css" rel="stylesheet" /> <!-- 공통 CSS 파일 포함 -->
    <title>Rest</title>
</head>
<body>
      <header>
        <div class="container-fluid">
            <c:set var="pageTitle" value="Rest" scope="page" />
            <%@ include file="../fragments/header.jspf"%>
        </div>
    </header>
    
    <div class="mt-5 d-flex justify-content-center" >
        <div class="container text-center m-5 border p-4 rounded" style="width:900px; min-width:900px">
              <div class="row">
                <div class="col-7 order-first">
                  <p class="mt-2 fs-3">Rest 음악 MP3 정기결제이용권</p>
                </div>
                <div class="col-5 order-last row">
                    <p class="col fs-4 mt-2">4400원</p>
                  <button class="btn btn-primary btn-sm fs-3 col" title="test" id="purchase">구매</button>
                </div>
              </div>
            </div>  
    </div>
    <footer>
      <!-- 모달 요소들을 footer로 사용. 모든 페이지에 사용되기 때문 -->
      <%@ include file="../fragments/footer.jspf" %>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
    crossorigin="anonymous"></script>
    
    <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    
    <script>
      let loginUserId ='${loginUserId}';
      let refresh = '${refresh}';
		  // 리다이렉트 시 재생페이지를 새로고침하기 위한 코드
    </script>
    
    <c:url var="purchaseJS" value="/js/purchase.js" />
    <script src="${purchaseJS}"></script>
    <c:url var="addCurrentPlayList" value="/js/addCurrentPlayList.js" />
    <script src="${addCurrentPlayList}"></script>
    
</body>
</html>