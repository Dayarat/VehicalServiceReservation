<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/index.css">
<title>Insert title here</title>

<script type="text/javascript">
function authorize() {
    var authorizeEndpoint = 'https://api.asgardeo.io/t/org8d13s/oauth2/authorize';
    var clientId = '2zGvdGwcZlHJf6Mvf01VIypHfzQa';
    var redirectUri = encodeURIComponent('http://localhost:8080/VehicalServiceReservation/authorize.jsp');

    var redirectUrl = authorizeEndpoint + '?response_type=code' +
        '&client_id=' + clientId +
        '&scope=openid address email phone profile' +
        '&redirect_uri=' + redirectUri;

    window.location.href = redirectUrl;
}
</script>
</head>
<body>
<div class="index">
<div class="indexdetails">
	<h1>Welcome To VehicleVital</h1>
	<h4>Sign In Using Asgardeo</h4>
	<button class="btn" onClick="authorize()">Login</button>
	<br><br><br><br><br><br>
	<h4>-Don't have an Asgardeo Account-</h4>
	
	<a href="https://wso2.com/asgardeo/docs/get-started/create-asgardeo-account/#sign-up" target="_blank">
  <button class="btn2">Create Account</button>
</a>
	</div>
	</div>
</body>
</html>