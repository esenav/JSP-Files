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
				<a href = "index.jsp" ><button>Logout</button></a>
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
		   <%
			  if ( session.isNew() )
			  {
				out.println( "<h1>Now you logging as <strong>Manager</strong></h1></br>" );
			  }
			  else
			  {
				session.invalidate();
			%>
				<jsp:forward page="manager_login.jsp" />
			<%
			  }
			%>

			<% 
			  if ( request.getParameter( "username" ) == null )
			  {
				out.println( "Please insert your Manager details:</br>" );
				out.println("<br />");
			  }
			  else
			  {
				pageContext.setAttribute(
				  "managerNumberString",
				  request.getParameter( "username" ) );
				pageContext.setAttribute(
				  "managerPasswordString",
				  request.getParameter( "password" ) );
			%>

				<sql:query var="result">
				  select * from manager where 
					manager_number = "${managerNumberString}" and 
					passwd = MD5("${managerPasswordString}");
				</sql:query>

				<c:set var = "numResults" scope="page" value = "${result.rowCount}"/>

			<%
				Object o = pageContext.getAttribute( "numResults" );
				/* Above line not used. */
				Integer obj = new Integer( 1 );
				int i = obj.intValue();

				if ( pageContext.getAttribute( "numResults" ).equals( obj ) )
				{
				  String usernameID = new String( "username" );
				  String usernameVAL =
					 new String( request.getParameter( "username" ) );
				  session.setAttribute(
					usernameID, usernameVAL );
			%>
				  <jsp:forward page="manager_info.jsp" />
			<%
				}
				else
				{
				  out.println( "Login failed, please try again:" );
				}
			  }
			%>
			<form action="manager_login.jsp" method="POST">
				Username: <input type="text"
				name="username"></br>
				Password: <input type="password"
				name="password" /></br>
				<input type="submit" value="Login" />
			</form>
		</div>
	</div>
  </body>
</html>
