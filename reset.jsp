<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%-- add interest to all accounts --%>
<!DOCTYPE html>
<html>
<head>
   <title>Reset Database</title>
   <meta charset="utf-8">
</head>
<body>
<c:choose>
	<c:when test="${param.submitted!=null}">
		<c:catch var="exception">
			<sql:transaction isolation="serializable">
				<sql:update var="count">  
				  DELETE FROM customer  
				</sql:update>    
				<sql:update var="count">  
				  DELETE FROM order_item  
				</sql:update>
				<sql:update var="count">  
				  DELETE FROM inventory  
				</sql:update>  
				<sql:update var="count">  
				  DELETE FROM inventory_group  
				</sql:update>
				<sql:update var="count">  
				  DELETE FROM customer_order  
				</sql:update>  
				<sql:update var="count">  
				  DELETE FROM manager  
				</sql:update>
				
				<sql:update var="count">  
					INSERT INTO inventory_group VALUES (1001, "Books");
				</sql:update>    
				<sql:update var="count"> 
					INSERT INTO inventory_group VALUES (1002, "Music");
				</sql:update>    
				<sql:update var="count"> 
					INSERT INTO inventory_group VALUES (1003, "Games");
				</sql:update>    
				<sql:update var="count"> 
					INSERT INTO inventory_group VALUES (1004, "DVDs");
				</sql:update>    
				
				<sql:update var="count"> 
					INSERT INTO inventory VALUES ("AA01-001", "Of Mice and Men", "\"Guys like us, that work on ranches, are the loneliest guys in the world. They got no family. They don\'t belong no place ...With us it ain\'t", "John Steinbeck", "./1.jpg", 1001, 10.99 ,"A7-33", 10, 15 );
				</sql:update>    
				<sql:update var="count"> 
					INSERT INTO inventory VALUES ("AA01-002", "Cambridge Latin Course, Book 1: Level 1", "The leading Latin course worldwide Book I begins in the city of Pompeii shortly before the eruption of Vesuvius.", "Cambridge School Classics Project","2.jpg", 1001, 12.75 ,"A5-22", 5, 10 );
				</sql:update>    
				<sql:update var="count"> 
					INSERT INTO inventory VALUES ("AA01-003", "King Lear", "By far the best edition of King Lear - in respect of both textual and other matters. This volume is a treasure-trove of precise information ", "William Shakespeare, ed. R A Foakes","3.jpg", 1001, 8.99 ,"A5-26", 25, 100 );
				</sql:update>    
				<sql:update var="count"> 
					INSERT INTO inventory VALUES ("AA01-054", "Babel", "Babel is the second studio album from London folk rockers Mumford and Sons, following the phenomenally successful debut Sigh No More (2009).", "Mumford and Sons","4.jpg", 1002, 8.99 ,"B1-23", 25, 100 );
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO inventory VALUES ("AA01-058", "Random Access Memories", "Random Access Memories is, without a doubt Daft Punk, but it's a sign of how the group is evolving. The signature sound is still there, but ", "Daft Punk","5.jpg", 1002, 9.99 ,"B1-28", 15, 25 ); 
				</sql:update>    
				<sql:update var="count"> 
					INSERT INTO inventory VALUES ("AA01-059", "The Shocking Miss Emerald", "The Shocking Miss Emerald is the second studio album from Dutch singing sensation Caro Emerald. The album promises more of the same jazzy po", "Caro Emerald","6.jpg", 1002, 10.00 ,"B4-04", 15, 25 ); 
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO inventory VALUES ("AA01-060", "Our Version of Events", "For a relative newcomer, Sandé has already had an incredible career. As a published writer she has written hit singles for Chipmunk (Diamond", "Emeli Sandé","7.jpg", 1002,9.99 ,"B2-25", 15, 25 );
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO inventory VALUES ("AA01-004", "The Hogwarts Library Boxed Set", "A highly collectable hardback boxed set from the world of Harry Potter - containing handsome new editions of Quidditch Through the Ages, Fan", "J K Rowling","8.jpg", 1001, 25.00 ,"A6-12", 16, 0 );
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO inventory VALUES ("AA01-005", "A Hat Full of Sky", "A Hat Full of Sky continues the adventures of eleven-year-old Tiffany as she endeavours to become a proper witch. She's 'done' magic before,", "Terry Pratchett","9.jpg", 1001, 15.50 ,"A23-06", 10, 0 );
				</sql:update>    	
				<sql:update var="count"> 	
					INSERT INTO inventory VALUES ("AA01-006", "Times Good University Guide 2014 ", "The Times Good University Guide is an essential tool that gives you all the information you need to make the crucial decision of where to st", "John O\'Leary","10.jpg", 1001, 16.99 ,"A23-07", 0, 100 );
				</sql:update>    	
				<sql:update var="count"> 		
					INSERT INTO inventory VALUES ("AA01-007", "Empire of the Deep: The Rise and Fall of", "The story of our navy is nothing less than the story of Britain, our culture and our empire. Much more than a parade of admirals and their b", "Ben Wilson","11.jpg", 1001, 25.00 ,"A23-09", 0, 10);
				</sql:update>   
				<sql:update var="count">
					INSERT INTO inventory VALUES ("AA01-008", "Night Visions", "It was released on September 4, 2012 through Interscope Records. Musically, Night Visions is primarily an alternative rock and indie rock", "Imagine Dragons","12.jpg", 1002, 50.00,"B3-26", 120, 80);
				</sql:update>
				<sql:update var="count">
					INSERT INTO inventory VALUES ("AA01-009", "Smoke + Mirrors", "Album was released by Interscope Records and Grant's KIDinaKORNER label on February 17, 2015 in the United States.","Imagine Dragons","13.jpg", 1002, 45.00,"B2-25", 0, 0);
				</sql:update>
				<sql:update var="count">
					INSERT INTO inventory VALUES ("AA01-010", "Run", "The album was announced on January 25, 2015 along with a music video of their new song Hollow Moon (Bad Wolf)","Awolnation","15.jpg", 1002, 10.00,"B4-27", 20,5);
				</sql:update>
				<sql:update var="count">
					INSERT INTO inventory VALUES ("AA01-011", "Back from Earth", "It was released digitally by Red Bull Records on May 18, 2010 for iTunes.","Awolnation","14.jpg", 1002, 15.00,"B4-29", 25, 10);
				</sql:update>
				<sql:update var="count">
					INSERT INTO inventory VALUES ("AA01-012", "League of Legends", "Its a multiplayer online battle arena video game developed by Riot Games It is a free-to-play game that is supported by micro-transactions","Riot Games","16.jpg", 1003, 0.0,"B6-01", 1000, 500);
				</sql:update>
				<sql:update var="count">
					INSERT INTO inventory VALUES ("AA01-013", "LineAge2", "a massive multiplayer online role-playing game (MMORPG) for Microsoft Windows, the second game in the Lineage series.","NCSOFT","17.jpg", 1003, 0.0, "B6-02", 400, 300);
				</sql:update>
				<sql:update var="count">
					INSERT INTO inventory VALUES ("AA01-014", "Heroes of Might and Magic V", "the fifth installment of the Heroes of Might and Magic fantasy turn-based strategy video game series. Like the other games in the series","Ubisoft","18.jpg", 1003, 60.00, "B6-03", 300, 150);
				</sql:update>
				<sql:update var="count">
					INSERT INTO inventory VALUES ("AA01-015", "Borderlans 2", "An action role-playing first-person shooter video game, developed by Gearbox Software and published by 2K Games on September 18, 2012.","2K Games","19.jpg", 1003, 49.99, "B6-04",300,100);
				</sql:update>
				<sql:update var="count">
					INSERT INTO inventory VALUES ("AA01-016", "The Avengers", "A 2012 American superhero film based on the Marvel Comics superhero team of the same name, produced by Marvel Studios","Zak Penn","20.jpg",1004, 10.00, "B7-01", 50, 25);
				</sql:update>
				<sql:update var="count">
					INSERT INTO inventory VALUES ("AA01-017", "X-Men", "A 2000 American superhero film based on the Marvel Comics superhero team of the same name, distributed by 20th Century Fox.","Tom DeSanto","21.jpg", 1004, 5.00, "B7-02", 25, 15);
				</sql:update>
				<sql:update var="count">
					INSERT INTO inventory VALUES ("AA01-018", "Interstellar", "The film features a crew of astronauts who travel through a wormhole in search of a new home for humanity.","Jonathan Nolan","22.jpg", 1004, 15.00, "B7-03", 30, 20);
				</sql:update>   	
				<sql:update var="count"> 
					INSERT INTO customer VALUES (1001, "Smith", "J.", "Alan", 'Mr', "43 The Glebe", "Mugwell Hill", "Nodnol", "", "N10 4SB", MD5("Alan"), "Mugwell Hill");      
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer VALUES (1003, "Smith", "W.", "Fiona", 'Mrs', "43 The Glebe", "Mugwell Hill", "Nodnol", "", "N10 4SB", MD5("Fiona"), "Mugwell Hill");
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer VALUES (5789, "Potter", "J.", "Harry", 'Mr', "4 Privet Drive", "", "Little Whinging", "Surrey", "LW3 6JR", MD5("Harry"), "Diagonally");
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer VALUES (4321, "Black", "S.", "Sirius", 'Mr', "12 Grimmauld Place", "Bensington ", "Nodnol", "", "W1 3RD", MD5("Sirius"), "Diagonally");
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer VALUES (6999, "McGonagall", "T.", "William", 'Mr', "12 Dundas Street", "Bad Poetry", "Yelsiap", "Werfner", "G43 3RD", MD5("Wiliam"), "Silvery Tay");
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer VALUES (6956, "McFeegle", "", "Wee Jock", 'Mr',  "The Barrow", "The Chalk", "nr Waylands", "Ramtops", "TP1 7XF", MD5("Jock"), "Jings Crivens");
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer VALUES (9867, "Aching", "", "Tiffany", 'Miss', "The Farm", "The Chalk", "nr Waylands", "Ramtops", "TP1 5RR", MD5("Tiffany"), "I shall wear Midnight");
				</sql:update>
				
				<sql:update var="count"> 				
					INSERT INTO `customer_order` VALUES (1001,'2014-11-07 15:15:23',1,'2014-11-18 15:15:23',1001),(1002,'2014-11-28 15:15:23',1,'2014-11-30 15:15:23',5789),(1003,'2014-12-08 15:15:23',1,'2014-12-10 15:15:23',1001),(1004,'2014-12-17 15:15:23',1,'2014-12-18 15:15:23',5789),(1005,'2014-12-24 15:15:23',0,'1900-01-01 00:00:00',9867),(1006,'2014-12-30 15:15:23',1,'2014-12-31 15:15:23',6999),(1007,'2015-01-01 15:15:23',1,'2015-01-02 15:15:23',1001),(1008,'2015-01-03 15:15:23',1,'2015-01-04 15:15:23',5789),(1009,'2015-01-03 15:15:23',0,'1900-01-01 00:00:00',6999),(1010,'2015-01-05 15:15:23',1,'2015-01-06 15:15:23',6956),(1011,'2015-01-06 15:15:23',0,'1900-01-01 00:00:00',5789),(1012,'2015-01-06 15:15:23',0,'1900-01-01 00:00:00',9867),(1013,'2015-01-07 15:15:23',0,'1900-01-01 00:00:00',1001);
				</sql:update>  
				
				<%-- This is the original sql statements for creating the data for the table. As we want to reset it to the same values each time, we use the above dump instead.
				<sql:update var="count"> 
					INSERT INTO customer_order VALUES (1001, SUBDATE(NOW(), INTERVAL 2 MONTH), TRUE, SUBDATE(NOW(), INTERVAL 50 DAY),  1001);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer_order VALUES (1002, SUBDATE(NOW(), INTERVAL 40 DAY), TRUE, SUBDATE(NOW(), INTERVAL 38 DAY), 5789);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer_order VALUES (1003, SUBDATE(NOW(), INTERVAL 30 DAY), TRUE, SUBDATE(NOW(), INTERVAL 28 DAY), 1001);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer_order VALUES (1004, SUBDATE(NOW(), INTERVAL 21 DAY), TRUE, SUBDATE(NOW(), INTERVAL 20 DAY), 5789);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer_order VALUES (1005, SUBDATE(NOW(), INTERVAL 14 DAY), FALSE, '1900/01/01', 9867);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer_order VALUES (1006, SUBDATE(NOW(), INTERVAL 8 DAY), TRUE, SUBDATE(NOW(), INTERVAL 7 DAY), 6999);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer_order VALUES (1007, SUBDATE(NOW(), INTERVAL 6 DAY), TRUE, SUBDATE(NOW(), INTERVAL 5 DAY), 1001);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer_order VALUES (1008, SUBDATE(NOW(), INTERVAL 4 DAY), TRUE, SUBDATE(NOW(), INTERVAL 3 DAY), 5789);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer_order VALUES (1009, SUBDATE(NOW(), INTERVAL 4 DAY), FALSE, '1900/01/01', 6999);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer_order VALUES (1010, SUBDATE(NOW(), INTERVAL 2 DAY), TRUE, SUBDATE(NOW(), INTERVAL 1 DAY), 6956);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer_order VALUES (1011, SUBDATE(NOW(), INTERVAL 1 DAY), FALSE, '1900/01/01', 5789);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer_order VALUES (1012, SUBDATE(NOW(), INTERVAL 1 DAY), FALSE, '1900/01/01', 9867);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO customer_order VALUES (1013, NOW(), FALSE, '1900/01/01', 1001);
				</sql:update> 
				--%>
				
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-002", 1001 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-004", 1002 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-060", 1002 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-060", 1003 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-054", 1003 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-059", 1003 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-054", 1004 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-005", 1005 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-003", 1006 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-002", 1006 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-001", 1007 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-003", 1008 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-001", 1009 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-005", 1010 ,25);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-007", 1011 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-059", 1012 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-054", 1012 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-060", 1012 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-007", 1013 ,1);
				</sql:update>    	
				<sql:update var="count"> 
					INSERT INTO order_item VALUES ("AA01-006", 1013 ,1);
				</sql:update>    	
				
				<sql:update var="count"> 
					INSERT INTO manager VALUES(100, "Jones", "", "Adam", MD5("Adam"), "Erehwon website" );
				</sql:update>
				
			</sql:transaction>
		</c:catch>
		<c:choose>
			<c:when	test="${exception != null}">
			   <p>
			   An exception occurred while resetting the database : ${exception} <br />
			   Message: ${exception.message}
			   </p>
			</c:when>
			<c:otherwise>
				<p>Database has been reset</p>
			</c:otherwise>
		</c:choose>
    </c:when>
	<c:otherwise>
		<form method="post">
			<p>This will reset the database!</p>
			<input type="submit" name="submitted" value="submit"/>
		</form>
    </c:otherwise>
</c:choose>
</body>
</html>