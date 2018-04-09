<%-- 
    Document   : formprocess
    Created on : Apr 2, 2018, 4:17:56 PM
    Author     : stone
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page language="java" import="java.util.*" errorPage="" %> 
<%@ page import="java.sql.*"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/jazz_style.css" type="text/css">

        <title>Jazzervations Confirmation Page</title>

        <link rel="stylesheet" href="styles/jazz_style.css" type="text/css">

    </head>
    <body>
        <!-- Start of Main Section	
********************************************************************************************************************************************* 		 -->

        <div class="container spacing" id="top">
            <div class="row">
                <div class="instructions">


                    <%
                        String driver = "org.apache.derby.jdbc.ClientDataSource";
                        String url = "jdbc:derby://localhost:1527/jazzervations;user=app;password=password";
                    %>

                    <!-- Start of Form Process	
            ********************************************************************************************************************************************* 		 -->	
                    <%
                        String method = "";

                        method = request.getMethod();

                        if (method.equalsIgnoreCase("POST")) {
                            Integer CUSTOMERID = (int) Math.floor(Math.random() * 1000);
                            Integer RESERVATIONID = (int) Math.floor(Math.random() * 1000);
                            Integer SALEID = (int) Math.floor(Math.random() * 1000);
                            String CUSTOMERFIRSTNAME = request.getParameter("CUSTOMERFIRSTNAME");
                            String CUSTOMERLASTNAME = request.getParameter("CUSTOMERLASTNAME");
                            String ADDRESS = request.getParameter("ADDRESS");
                            String CITY = request.getParameter("CITY");
                            String STATE = request.getParameter("STATE");
                            String ZIP = request.getParameter("ZIP");
                            String EMAILADDRESS = request.getParameter("EMAILADDRESS");
                            String PHONENUMBER = request.getParameter("PHONENUMBER");
                            String SEATS = request.getParameter("SEATSRESERVED");
                            Integer SEATSRESERVED = Integer.parseInt(SEATS);
                            String PRINTMETHOD = request.getParameter("TICKETPRINTMETHOD");
                            String ONLINE = request.getParameter("ONLINEPURCHASE");
                            double TOTALPRICE = 0.0;
                            /*
                            String SEAT = request.getParameter("SEATID");
                            Integer SEATID = Integer.parseInt(SEAT);
                             */
                            String TOBESHIPPED = request.getParameter("SHIPPED");
                            double SEATPRICE = 0;
                            //boolean SHIPPED = true;
                            String ROWID = request.getParameter("ROWID");
                            if (ROWID.equalsIgnoreCase("A")) {
                                SEATPRICE = 50;
                            } else if (ROWID.equalsIgnoreCase("B")) {
                                SEATPRICE = 50;
                            } else if (ROWID.equalsIgnoreCase("C")) {
                                SEATPRICE = 50;
                            } else if (ROWID.equalsIgnoreCase("D")) {
                                SEATPRICE = 40;
                            } else if (ROWID.equalsIgnoreCase("E")) {
                                SEATPRICE = 40;
                            } else if (ROWID.equalsIgnoreCase("F")) {
                                SEATPRICE = 40;
                            } else if (ROWID.equalsIgnoreCase("G")) {
                                SEATPRICE = 30;
                            } else if (ROWID.equalsIgnoreCase("H")) {
                                SEATPRICE = 30;
                            } else if (ROWID.equalsIgnoreCase("I")) {
                                SEATPRICE = 30;
                            }

                            Connection aConnection = null;
                            try {

                                Class.forName(driver);

                                // Setup the connection with the DB
                                aConnection = DriverManager.getConnection(url);
                                aConnection.setAutoCommit(false);
                                System.out.println("DB Connection successful");

                                StringBuilder aBuilder = new StringBuilder();
                                aBuilder.append("INSERT INTO CUSTOMER (CUSTOMERID, CUSTOMERFIRSTNAME,CUSTOMERLASTNAME, ADDRESS, CITY, STATE, ZIP, EMAILADDRESS, PHONENUMBER) ");
                                aBuilder.append("VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
                                String aPreparedQuery = aBuilder.toString();

                                PreparedStatement aStatement = aConnection.prepareStatement(aPreparedQuery);
                                aStatement.setInt(1, CUSTOMERID);
                                aStatement.setString(2, CUSTOMERFIRSTNAME);
                                aStatement.setString(3, CUSTOMERLASTNAME);
                                aStatement.setString(4, ADDRESS);
                                aStatement.setString(5, CITY);
                                aStatement.setString(6, STATE);
                                aStatement.setString(7, ZIP);
                                aStatement.setString(8, EMAILADDRESS);
                                aStatement.setString(9, PHONENUMBER);

                                StringBuilder bBuilder = new StringBuilder();
                                bBuilder.append("INSERT INTO RESERVATIONS (RESERVATIONID, CUSTOMERID, SEATSRESERVED, TICKETPRINTMETHOD) ");
                                bBuilder.append("VALUES (?, ?, ?, ?)");
                                String bPreparedQuery = bBuilder.toString();

                                PreparedStatement bStatement = aConnection.prepareStatement(bPreparedQuery);
                                bStatement.setInt(1, RESERVATIONID);
                                bStatement.setInt(2, CUSTOMERID);
                                bStatement.setInt(3, SEATSRESERVED);
                                if (PRINTMETHOD.equalsIgnoreCase("true")) {

                                    bStatement.setBoolean(4, true);
                                }
                                if (PRINTMETHOD.equalsIgnoreCase("false")) {

                                    bStatement.setBoolean(4, false);
                                }
                                double SUBTOTAL = SEATSRESERVED * SEATPRICE;
                                if (ONLINE.equalsIgnoreCase("true")) {
                                    SUBTOTAL *= 1.07;
                                }
                                if (PRINTMETHOD.equalsIgnoreCase("true")) {
                                    SUBTOTAL += 5.95;
                                }
                                TOTALPRICE = SUBTOTAL;

                                StringBuilder cBuilder = new StringBuilder();
                                cBuilder.append("INSERT INTO SALES (SALEID, RESERVATIONID, TOTALPRICE, ONLINEPURCHASE, SHIPPED) ");
                                cBuilder.append("VALUES (?, ?, ?, ?, ?)");
                                String cPreparedQuery = cBuilder.toString();

                                PreparedStatement cStatement = aConnection.prepareStatement(cPreparedQuery);
                                cStatement.setInt(1, SALEID);
                                cStatement.setInt(2, RESERVATIONID);
                                cStatement.setDouble(3, TOTALPRICE);
                                if (ONLINE.equalsIgnoreCase("false")) {

                                    cStatement.setBoolean(4, false);
                                }
                                if (ONLINE.equalsIgnoreCase("true")) {

                                    cStatement.setBoolean(4, true);
                                }
                                if (PRINTMETHOD.equalsIgnoreCase("true")) {

                                    cStatement.setBoolean(5, true);
                                }
                                if (PRINTMETHOD.equalsIgnoreCase("false")) {

                                    cStatement.setBoolean(5, false);
                                }

                                aStatement.executeUpdate();

                                bStatement.executeUpdate();

                                cStatement.executeUpdate();

                                for (int i = 0; i < SEATSRESERVED; i++) {
                                    StringBuilder dBuilder = new StringBuilder();
                                    dBuilder.append("SELECT SEATID FROM SEATS WHERE SEATAVAILABILITY = ? AND ROWID = ? FETCH FIRST 1 ROWS ONLY");
                                    String dPreparedQuery = dBuilder.toString();

                                    PreparedStatement dStatement = aConnection.prepareStatement(dPreparedQuery);

                                    dStatement.setBoolean(1, true);
                                    dStatement.setString(2, ROWID);

                                    ResultSet ten = dStatement.executeQuery();

                                    while (ten.next()) {

                                        StringBuilder eBuilder = new StringBuilder();
                                        eBuilder.append("UPDATE SEATS SET SEATAVAILABILITY = ?,  RESERVATIONID = ? WHERE SEATID = ?");
                                        String ePreparedQuery = eBuilder.toString();

                                        PreparedStatement eStatement = aConnection.prepareStatement(ePreparedQuery);

                                        eStatement.setBoolean(1, false);
                                        eStatement.setInt(2, RESERVATIONID);
                                        eStatement.setInt(3, ten.getInt("SEATID"));

                                        eStatement.executeUpdate();
                                    }

                                }

                                aConnection.commit();
                            } catch (Exception e) {
                                e.printStackTrace();
                                try {
                                    aConnection.rollback();
                                } catch (Exception re) {
                                    re.printStackTrace();
                                }
                            } finally {
                                // try to close the connection...
                                try {
                                    // close the connection...
                                    aConnection.close();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                    %>
                    <h1 class="left-title">Confirmation:</h1>
                    <br>
                    <br>

                    <h2  class="left-title"> Enjoy the show <%=request.getParameter("CUSTOMERFIRSTNAME")%>!</h2>  

                    <h1>Order Summary: </h1>

                    <h1>You're in Row: <%= request.getParameter("ROWID")%> </h1>


                    <h1>You have Reserved: <%=request.getParameter("SEATSRESERVED")%> seats.</h1>

                    <h1>Total: $<%= String.format("%.2f", TOTALPRICE) %></h1>
                    <%
                        }
                    %> 





                    <!-- End of Contact Section	
                ********************************************************************************************************************************************* 		 -->


                </div>
                <div class="forty-five">
                    <img src="images/pageLogo.png" alt="" />
                </div>
                <div class="navigation">
                    <h1 class="center-title">Navigation</h1>
                    <ul class="nav-links">
                        <li><a href="index.jsp#top">Home</a></li>
                        <li><a href="index.jsp#seats">Seating Chart</a></li>
                        <li><a href="index.jsp#reservation">Reservation Form</a></li>
                        <li><a href="index.jsp#reports">Reports</a></li>
                    </ul>
                </div>
            </div>	
            <!-- End of Main Section	
********************************************************************************************************************************************* 		 -->
            <h1 class="center-title">Thank you and enjoy the concert.</h1>
            <br>
            <br>
          
            <a href="index.jsp"><h1 class="center-title">Return to Jazzervations site</h1></a>

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
            <!-- End of Footer Section	
        ********************************************************************************************************************************************* 		 -->
        </div> <!-- end of container -->

    </body>
</html>
