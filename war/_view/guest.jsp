<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
	<head>
		<title>Guest Sign In</title>
		<style type="text/css">
		.error {
			color: red;
		}
		
		td.label {
			text-align: right;
		}
		</style>
	</head>

	<body>
		<c:if test="${! empty errorMessage}">
			<div class="error">${errorMessage}</div>
		</c:if>
	
		<form action="${pageContext.servletContext.contextPath}/guest" method="post">
			<table>
				<tr>
					<center><td class="label">What is your name?:</td></center>
					<center><td><input type="text" name="guestName" size="12" value="${guest.guestName}" /></td></center>
				</tr>
                 
			</table>
			<input type="Submit" name="submit" value="Guest name!">
		</form>
        <br>
		          <a href="http://localhost:8081/MineSweeper/signUp"><h3>There's still time to make an account!!</h3> </a>
                <br>
	</body>
</html>