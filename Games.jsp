<%@ taglib
 uri="http://java.sun.com/jsp/jstl/core"
 prefix="c" %>
<%@ taglib
 uri="http://java.sun.com/jsp/jstl/sql"
 prefix="sql" %>
<%@ page import = "java.lang.*" %> 
<!DOCTYPE html>
<html style = "background: seagreen;">
  <head>
    <title>Erehwon Online Shop Games section</title>
	<link rel="stylesheet" href="website_style.css" type="text/css" />
  </head>
  <body>
    <div class = "home" >
		<a href = "Assignment.jsp"><h3>Welcome to Erehwon online shop</h3></a>
	</div>
	<div class = "top" >
	</div>
	<div class = "top2">
		<div class = "category_top">
				<a href = "reset.jsp" ><button>Reset DataBase</button></a>
				<a href = "marks.txt" ><button>Marks</button></a>
				<a href = "Logout.jsp" ><button>Logout</button></a>
		</div>
	</div>
	<div class = "Login" >
		<div id = "user_login" >
			<a href = "Login.jsp" ><button>Login</button></a>
		</div>
		<div id = "manager_login">
			<a href = "manager_login.jsp" ><button>Manager login</button></a>
		</div>			
	</div>
	<div class = "page" >
		<div class = "category">
			<a href = "index.jsp" ><button>Home</button></a>
			<a href = "Games.jsp" ><button>Games</button></a>
			<a href = "Books.jsp" ><button>Books</button></a>
			<a href = "CDs.jsp" ><button>Music</button></a>
			<a href = "DVDs.jsp" ><button>DVDs</button></a>
		</div>
		<div class = "content">
			<h1>Available Games</h1>
			<sql:query var="result">
					select * from inventory
					where item_group = "1003";
			</sql:query>
			<c:forEach var = "item" items = "${result.rows}">	
				<div class = "boxes">
					<h2><c:out value = "${item.item_name}"/></h2>
					<p><c:out value = "${item.item_description}"/></p>
					<img src = "<c:out value = "${item.item_image_loc}"/>" />
					<p>£<c:out value = "${item.item_price}"/></p>
					<a href = " "><button>Purchase</button></a>
				</div>
			</c:forEach>
		</div>
	</div>
  </body>
</html>