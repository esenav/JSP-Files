<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%! String title="CE154 - Intoduction to JSTL"; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="./styles/style.css" type="text/css" />
<title><%= title %></title>
</head>
<body>
<h1><%= title %></h1>
<p style="font-variant:small-caps; font-weight:bold; font-size:xx-large; color:green;">Congratulations!!</p>
<p>You have set up JSTL and your database correctly</p>
<p>Use the form below to test your database connection:</p>
<sql:query var="result" sql="SHOW TABLES" />
<form method="post" action="./pages/view.jsp">
	<fieldset>
		<legend>View a Table's Contents:</legend>
		<select name="table">
			<optgroup label="Tables">
				<c:forEach var="row" items="${result.rowsByIndex}"><option><c:out value="${row[0]}"/></option></c:forEach>
			</optgroup>
		</select>
		<input type="submit" value="view" />
	</fieldset>
</form>
<pre><code>
<%= getServletContext().getServerInfo()%> running on <%= request.getServerName() %>:<%= request.getServerPort() %>
</code></pre>
</body>
</html>