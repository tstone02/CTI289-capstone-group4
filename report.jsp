<%-- 
    Document   : report
    Created on : Apr 9, 2018, 10:59:51 PM
    Author     : stone
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@ page language="java" import="java.util.*" errorPage="" %>
<%@page import="java.sql.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Jazzervation Sales Data</title>

        <link rel="stylesheet" href="styles/jazz_style.css" type="text/css">
    </head>
    <body>
        <div class="container">
            <!-- Start of Main Section	
********************************************************************************************************************************************* 		 -->

            <div class="container spacing" id="top">
                <div class="row">
                    <div></div>
                    <div class="forty-five">
                        <img src="images/pageLogo.png" alt="" />
                    </div>
                    <div class="navigation">
                    <h1 class="center-title">Navigation</h1>
                    <ul class="nav-links">
                        <li><a href="index.jsp#top">Home</a></li>
                        <li><a href="index.jsp#seats">Seating Chart</a></li>
                        <li><a href="index.jsp#reservation">Reservation Form</a></li>
                        <li><a href="#">Reports</a></li>
                    </ul>
                </div>
                </div>	
                <!-- End of Main Section	
    ********************************************************************************************************************************************* 		 -->

                <h1 class="center-title">This is the Reports Page</h1>
                <div class="row">
                    <div></div>
                    <div id="reports">
                        <h1 class="left-title">Seats Available for Each Category</h1>
                        <ol>
                            <%
                                Connection zcon = null;
                                Connection ycon = null;
                                Connection xcon = null;
                                Connection wcon = null;
                                ResultSet seatsAvailable = null;
                                ResultSet seatsSold = null;
                                ResultSet categorySales = null;
                                ResultSet totalSales = null;
                                boolean isResultSetEmpty = true;
                                PreparedStatement preparedStatement = null;
                                String driver = "org.apache.derby.jdbc.ClientDataSource";
                                String url = "jdbc:derby://localhost:1527/Jazzervations;user=app;password=password";

                                try {

                                    Class.forName(driver).newInstance();

                                    zcon = DriverManager.getConnection(url);

                                    String seatquery = "SELECT CATEGORYID, COUNT(*) AS TOTAL FROM SEATS WHERE SEATAVAILABILITY = true GROUP BY CATEGORYID";
                                    //Send query to the database and store result in ResultSet

                                    preparedStatement = zcon.prepareStatement(seatquery);

                                    seatsAvailable = preparedStatement.executeQuery();

                                    while (seatsAvailable.next()) {
                                        //If we enter to the while, the ResultSet wasn't empty
                                        isResultSetEmpty = false;

                            %>
                            <li>Category:
                                <%=seatsAvailable.getInt("CATEGORYID")%>     
                                Seats Available : 
                                <%=seatsAvailable.getInt("TOTAL")%>

                            </li>
                            <%

                                }

                                if (isResultSetEmpty) {
                            %>
                            <li>The database is Empty</li>
                                <%
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        try {
                                            zcon.rollback();
                                        } catch (Exception re) {
                                            re.printStackTrace();
                                        }
                                    } finally {
                                        // try to close the connection...
                                        try {
                                            // close the connection...
                                            zcon.close();
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    }

                                %>
                            <br><br>
                        </ol>
                        <h1 class="left-title">Tickets Sold for Each Category</h1>
                        <ol>
                            <%                try {

                                    Class.forName(driver).newInstance();

                                    ycon = DriverManager.getConnection(url);

                                    String seatquery = "SELECT CATEGORYID, COUNT(*) AS TOTAL FROM SEATS WHERE SEATAVAILABILITY = false GROUP BY CATEGORYID";
                                    //Send query to the database and store result in ResultSet

                                    preparedStatement = ycon.prepareStatement(seatquery);

                                    seatsSold = preparedStatement.executeQuery();

                                    while (seatsSold.next()) {
                                        //If we enter to the while, the ResultSet wasn't empty
                                        isResultSetEmpty = false;

                            %>
                            <li>Category:
                                <%=seatsSold.getInt("CATEGORYID")%>     
                                Tickets Sold : 
                                <%=seatsSold.getInt("TOTAL")%>

                            </li>
                            <%

                                }

                                if (isResultSetEmpty) {
                            %>
                            <li>The database is Empty</li>
                                <%
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        try {
                                            ycon.rollback();
                                        } catch (Exception re) {
                                            re.printStackTrace();
                                        }
                                    } finally {
                                        // try to close the connection...
                                        try {
                                            // close the connection...
                                            ycon.close();
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    }
                                %>
                            <br><br>
                        </ol>
                        <h1 class="left-title">Seat Revenue for each Category</h1>
                        <ol>
                            <%
                                try {

                                    Class.forName(driver).newInstance();

                                    xcon = DriverManager.getConnection(url);

                                    String seatquery = "SELECT CATEGORYID, SUM(SEATPRICE) AS TOTAL FROM SEATS GROUP BY CATEGORYID";
                                    //Send query to the database and store result in ResultSet

                                    preparedStatement = xcon.prepareStatement(seatquery);

                                    categorySales = preparedStatement.executeQuery();

                                    while (categorySales.next()) {
                                        //If we enter to the while, the ResultSet wasn't empty
                                        isResultSetEmpty = false;

                            %>
                            <li>Category:
                                <%=categorySales.getInt("CATEGORYID")%>     
                                Ticket Revenue: 
                                <%=categorySales.getInt("TOTAL")%>

                            </li>
                            <%

                                }

                                if (isResultSetEmpty) {
                            %>
                            <li>The database is Empty</li>
                                <%
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        try {
                                            xcon.rollback();
                                        } catch (Exception re) {
                                            re.printStackTrace();
                                        }
                                    } finally {
                                        // try to close the connection...
                                        try {
                                            // close the connection...
                                            xcon.close();
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    }
                                %>
                            <br><br>
                        </ol>
                        <h1 class="left-title">Total Revenue from all sales</h1>
                        <ol>
                            <%
                                try {

                                    Class.forName(driver).newInstance();

                                    wcon = DriverManager.getConnection(url);

                                    String seatquery = "SELECT SUM(TOTALPRICE) AS SALES FROM SALES";
                                    //Send query to the database and store result in ResultSet

                                    preparedStatement = wcon.prepareStatement(seatquery);

                                    totalSales = preparedStatement.executeQuery();

                                    while (totalSales.next()) {
                                        //If we enter to the while, the ResultSet wasn't empty
                                        isResultSetEmpty = false;

                            %>
                            <li>Total Revenue :
                                <%=totalSales.getInt("SALES")%>     

                            </li>
                            <%

                                }

                                if (isResultSetEmpty) {
                            %>
                            <li>The database is Empty</li>
                                <%
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        try {
                                            wcon.rollback();
                                        } catch (Exception re) {
                                            re.printStackTrace();
                                        }
                                    } finally {
                                        // try to close the connection...
                                        try {
                                            // close the connection...
                                            wcon.close();
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    }
                                %>
                            <br><br>
                        </ol>
                    </div>
                    <div></div>
                </div>
                <a href="index.jsp"><h3 class="center-title">Return to Jazzervations Home Page</h3></a>

                <!-- Start of Footer Section	
    ********************************************************************************************************************************************* 		 -->
                <footer>
                    <div class="row spacing spacing-bottom">
                        <div class="cell">
                            <!--
                            <a href="http://validator.w3.org/check?uri=referer" class="htmlValidator2 sprite space-right"></a>
    
                            <a href="http://jigsaw.w3.org/css-validator/check/referer" class="cssValidator2 sprite space-left"></a>
                       
                            -->
                        </div>
                        <div class="fifteen"></div> <!-- for spacing -->				
                        <div class="cell fifteen">
                            <h2>CTI 289 Group 4</h2>
                            <h3>Spring 2018</h3>
                            <a href="mailto:scaudle1@email.cpcc.edu?Subject=From%20a%20Guest" target="_top">scaudle1@email.cpcc.edu</a>
                            <a href="mailto:gmb96cee@email.cpcc.edu?Subject=From%20a%20Guest" target="_top">gmb96cee@email.cpcc.edu</a>
                            <a href="mailto:jbutler1@email.cpcc.edu?Subject=From%20a%20Guest" target="_top">jbutler3@email.cpcc.edu</a>
                            <a href="mailto:tmauney1@email.cpcc.edu?Subject=From%20a%20Guest" target="_top">tmauney1@email.cpcc.edu</a>
                            <a href="mailto:tstone02@email.cpcc.edu?Subject=From%20a%20Guest" target="_top">tstone02@email.cpcc.edu</a>
                        </div>
                        <div class="fifteen"></div><!-- for spacing -->

                        <div class="">
                            <a href="#" class="facebook sprite"></a>
                            <a href="#" class="instagram sprite"></a>
                            <a href="#" class="twitter sprite"></a>
                        </div>
                    </div>

                </footer>
            </div>
    </body>
</html>
