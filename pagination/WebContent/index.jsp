<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>  

<!-- 
  [부트스트랩 출처]https://www.w3schools.com/bootstrap4/bootstrap_get_started.asp
 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- [부트스트랩 출처] 끝 -->

<script type="text/javascript" src="./Jquery/jquery.twbsPagination.min.js"></script>
</head>
<body>

<!-- 
 [출처]https://github.com/josecebe/twbs-pagination
 -->
 
 <br><br>
 
 <div class="container">
    <nav aria-label="Page navigation">
       <ul class="pagination" id="pagination"></ul>
    </nav>
 
 </div>
 <script type="text/javascript">
  let totalCount = 51;    // 글의 총 수
  let pageSize = 10;      // 페이지 크기  [1] ~ [10] [1] ~ [5]
  let nowPage = 1;        // 현재 페이지

  let _totalPages = totalCount / pageSize;
  if(totalCount % pageSize > 0){
   _totalPages++;
	  }

 $("#pagination").twbsPagination({
      startPage: 1,
      totalPages: _totalPages,
      visiblePages: 10,
      first:'<span aria-hidden="true"><<</span>',
      prev:"이전",
      next:"다음",
      last:'<span aria-hidden="true">>></span>',
      onPageClick: function(event, page){
         nowPage = page;
        //  alert("nowPage"+ nowPage);
          }

        
	 }) 
 </script>
 

</body>
</html>


















