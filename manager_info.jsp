<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<c:catch var="exception">
		<sql:transaction isolation="serializable">
			<sql:query var="invgroup">
				SELECT * FROM inventory_group
			</sql:query>
			<sql:query var="inventory">
				SELECT * FROM inventory	
			</sql:query>
			<sql:query var="customer">
				SELECT * FROM customer		
			</sql:query>
			<sql:query var="orderitem">
				SELECT * FROM order_item
			</sql:query>
			<sql:query var="custorder">
				SELECT * FROM customer_order			
			</sql:query>
			<sql:query var="manager">
				SELECT * FROM manager
			</sql:query>
			<sql:query var="database">
				SELECT DATABASE()
			</sql:query>
			<sql:query var="user">
				SELECT USER()
			</sql:query>
		</sql:transaction>
</c:catch>
<!DOCTYPE html>
<html>
<head>
  <title>Index Page</title>
  <style type="text/css">
  	h1.table { font-size: 150%; color: #25b; margin: 16px 0 8px 0; }
  	th { font-size: 110%; color: #57d; text-align: left; }
  </style>
</head>
<body>
	<a href = "index.jsp"><button>Logout</button></a>
	<h1 class="table">Inventory Group</h1>
	<table>
		 <tr><th>Group Code</th><th>Group Name</th></tr>
		 <c:forEach var="row" items="${invgroup.rows}">
		 <tr><td><c:out value="${row.group_code}"/></td><td><c:out value="${row.group_name}"/></td></tr>
		 </c:forEach>
	</table>
			
	<h1 class="table">Inventory</h1>
	<table>
		 <tr><th>Item Code</th><th>Item Name</th><th>Item Description</th><th>Item Author</th><th>Item Image Loc</th><th>Item Group</th><th>Item Price</th><th>Item Stock Location</th><th>Item Stock Count</th><th>Item Order Count</th></tr>
		 <c:forEach var="row" items="${inventory.rows}">
		 <tr><td><c:out value="${row.item_code}"/></td><td><c:out value="${row.item_name}"/></td><td><c:out value="${row.item_description}"/></td><td><c:out value="${row.item_author}"/></td><td><c:out value="${row.item_image_loc}"/></td><td><c:out value="${row.item_group}"/></td><td><c:out value="${row.item_price}"/></td><td><c:out value="${row.item_stock_location}"/></td><td><c:out value="${row.item__stock_count}"/></td><td><c:out value="${row.item_order_count}"/></td></tr>
		 </c:forEach>
	</table>
			
	<h1 class="table">Customer</h1>
	<table>
		 <tr><th>Customer Number</th><th>Surname</th><th>Initials</th><th>First Name</th><th>Title</th><th>Address 1</th><th>Address 2</th><th>City</th><th>County</th><th>Postcode</th><th>Password</th><th>Pass Phrase</th></tr>
		 <c:forEach var="row" items="${customer.rows}">
		 <tr><td><c:out value="${row.customer_number}"/></td><td><c:out value="${row.surname}"/><td><c:out value="${row.initials}"/></td><td><c:out value="${row.firstname}"/><td><c:out value="${row.title}"/></td><td><c:out value="${row.address1}"/><td><c:out value="${row.address2}"/></td><td><c:out value="${row.city}"/><td><c:out value="${row.county}"/></td><td><c:out value="${row.postcode}"/><td><c:out value="${row.passwd}"/></td><td><c:out value="${row.passphrase}"/></td></tr>
		 </c:forEach>
	</table>
			
	<h1 class="table">Customer Order</h1>
	<table>
		 <tr><th>Order Number</th><th>Order Date</th><th>Delivered</th><th>Shipping Date</th><th>Customer Number</th></tr>
		 <c:forEach var="row" items="${custorder.rows}">
		 <tr><td><c:out value="${row.order_number}"/></td><td><c:out value="${row.order_date}"/></td><td><c:out value="${row.delivered}"/></td><td><c:out value="${row.shipping_date}"/></td><td><c:out value="${row.customer_number}"/></td></tr>
		 </c:forEach>
	</table>
			
	<h1 class="table">Order Item</h1>
	<table>
		 <tbody>
		 <tr><th>Item Code</th><th>Order Number</th><th>Quantity</th></tr>
		 <c:forEach var="row" items="${orderitem.rows}">
		 <tr><td><c:out value="${row.item_code}"/></td><td><c:out value="${row.order_number}"/></td><td><c:out value="${row.quantity}"/></td></tr>
		 </c:forEach>
		 </tbody>
	</table>
			
	<h1 class="table">Manager</h1>
	<table>
		 <tr><th>Manager Number</th><th>Surname</th><th>Initials</th><th>First Name</th><th>Password</th><th>Pass Phrase</th></tr>
		 <c:forEach var="row" items="${manager.rows}">
		 <tr><td><c:out value="${row.manager_number}"/></td><td><c:out value="${row.surname}"/></td><td><c:out value="${row.initials}"/></td><td><c:out value="${row.firstname}"/></td><td><c:out value="${row.passwd}"/></td><td><c:out value="${row.passphrase}"/></td></tr>
		 </c:forEach>
	</table>
	<a href="reset.jsp"><button>Reset Database</button></a>
</body>
</html>