<%@ taglib
 uri="http://java.sun.com/jsp/jstl/core"
 prefix="c" %>
<%@ taglib
 uri="http://java.sun.com/jsp/jstl/sql"
 prefix="sql" %> 

<!DOCTYPE html>
<html style = "background: seagreen;">
  <head>
    <title>Erehwon Online Shop</title>
	<link rel="stylesheet" href="website_style.css" type="text/css" />
  </head>
  <body>
    <div class = "home" >
		<a href = "index.jsp"><h3>Welcome to Erehwon online shop</h3></a>
	</div>
	<div class = "top" >
	</div>
	<div class = "top2">
		<div class = "category_top">
				<a href = "reset.jsp" ><button>Reset DataBase</button></a>
				<a href = "marks.txt" ><button>Marks</button></a>
				<a href = "logout.jsp" ><button>Logout</button></a>
		</div>
	</div>
	<div class = "Login_page" >
	</div>
	<div class = "page" >
		<div class = "category">
			<a href = "index.jsp" ><button>Home</button></a>
			<a href = "Games.jsp" ><button>Games</button></a>
			<a href = "Books.jsp" ><button>Books</button></a>
			<a href = "CDs.jsp" ><button>CDs</button></a>
			<a href = "DVDs.jsp" ><button>DVDs</button></a>
		</div>
		<div class = "content">
			<h1>You just logged out</h1>
		</div>
	</div>
  </body>
</html>