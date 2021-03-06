<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 500px;}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #555;
      height: 100%;
	border-radius: 5px;

    }
    
    /* Set black background color, white text and some padding */
    nav {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
    .navbar {
    	padding-top: 150px;
    	/* height: 100px; */
    }
    .container-fluid {
    	color: black;
    }
  </style>
  <script>
$( document ).ready(function() {
	function getContextPath() {
		var hostIndex = location.href.indexOf( location.host ) + location.host.length;
		return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	};
	$('#btn').click(function(){
		$(location).attr('href', getContextPath()+'/libraryAdd');
	});
});
  </script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
  </div>
</nav>
  

<div class="container-fluid">
  <div class="row content">
      <h4 align="center"><small>library</small></h4>
			<form action="" method="post">
				<div align="center">
					아이디 : <input type="text" name="libraryId">
				</div>
				<div align="center">
					비밀번호 : <input type="text" name="libraryPw">
				</div>
				<div align="center">
					<input class="btn btn-success" type="submit" value="로그인">
					<input id="btn"class="btn btn-warning" type="button" value="관리자 회원가입">
				</div>
			</form>
		</div>
</div>

</body>
</html>
