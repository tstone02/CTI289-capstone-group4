<%-- 
    Document   : index
    Created on : Mar 23, 2018, 3:16:56 AM
    Author     : stone
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@ page language="java" import="java.util.*" errorPage="" %> 
<%@ page import="java.sql.*"%>


<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            Jazzervations CTI 289 Group 4 Project Spring 2018
        </title>
        <link rel="stylesheet" href="styles/jazz_style.css" type="text/css">
    </head>
    <body>
        <!-- Start of Main Section	
********************************************************************************************************************************************* 		 -->

        <div class="container spacing" id="top">
            <div class="row">
                <div class="instructions">
                    <h1 class="big-display l-pad">How to Use this site:</h1>
                    <dl>
                        <dt class="l-pad">View the Seating Chart.</dt>
                        <dd>You can see the location and pricing for each section.</dd> <dd>You will be able to see what seats are still available in each row.</dd>
                        <dt class="l-pad">Decide where you want to sit.</dt>
                        <dd>Choose the section and row you want.</dd>
                        <dd>You may only select 1 row per reservation.</dd>
                        <dd>Verify that the row has enough seats for your entire party.</dd>
                        <dt class="l-pad">Make your reservation.</dt>
                        <dd>Fill out the reservation form.</dd>
                        <dt class="l-pad">Review and Submit your reservation.</dt>
                        <dd>Be sure the information you entered is correct.</dd>
                        <dd><strong>All sales are final.</strong></dd>
                        <dd>We look forward to seeing you at the concert.</dd>


                    </dl>
                </div>
                <div class="forty-five">
                    <img src="images/pageLogo.png" alt="" />
                </div>
                <div class="navigation">
                    <h1 class="center-title">Navigation</h1>
                    <ul class="nav-links">
                        <li><a href="#top">Home</a></li>
                        <li><a href="#seats">Seating Chart</a></li>
                        <li><a href="#reservation">Reservation Form</a></li>
                        <li><a href="#reports">Reports</a></li>
                    </ul>
                </div>
            </div>	
            <!-- End of Main Section	
********************************************************************************************************************************************* 		 -->

            <!-- Start of Seating Section	
********************************************************************************************************************************************* 		 -->
            <h1 class="center-title" id="seats">Seating Chart</h1>
            <div class="row spacing">
                <div class="sections">
                    <%
                        Connection con = null;
                        ResultSet one = null;
                        ResultSet two = null;
                        ResultSet three = null;
                        ResultSet four = null;
                        ResultSet five = null;
                        ResultSet six = null;
                        ResultSet seven = null;
                        ResultSet eight = null;
                        ResultSet nine = null;

                        boolean isResultSetEmpty = true;
                        PreparedStatement preparedStatement = null;
                        String driver = "org.apache.derby.jdbc.ClientDataSource";
                        String url = "jdbc:derby://localhost:1527/jazzervations;user=app;password=password";
                    %>
                    <ul>
                        <div class="a-section display">
                            <div class="row">
                                <div class="big-display">
                                    <li>Section 1</li>
                                    <li>Price: <span>$50.00</span></li>
                                    <li>Seats Available:</li>
                                </div>
                                <div>
                                    <ul>
                                        <%
                                            try {

                                                Class.forName(driver).newInstance();

                                                con = DriverManager.getConnection(url);

                                                String queryone = "SELECT count(*) as total FROM seats Where rowid = 'A'and SEATAVAILABILITY = true";
                                                //Send query to the database and store result in ResultSet

                                                preparedStatement = con.prepareStatement(queryone);

                                                one = preparedStatement.executeQuery();

                                                while (one.next()) {
                                                    //If we enter to the while, the ResultSet wasn't empty
                                                    isResultSetEmpty = false;

                                        %>
                                        <li>Row A: <span id="1a"><%=one.getInt("total")%></span></li>

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
                                                        con.rollback();
                                                    } catch (Exception re) {
                                                        re.printStackTrace();
                                                    }
                                                }
                                                try {

                                                    Class.forName(driver).newInstance();

                                                    con = DriverManager.getConnection(url);

                                                    String querytwo = "SELECT count(*) as total FROM seats Where rowid = 'B' and seatAvailability = true";
                                                    //Send query to the database and store result in ResultSet

                                                    preparedStatement = con.prepareStatement(querytwo);

                                                    two = preparedStatement.executeQuery();

                                                    while (two.next()) {
                                                        //If we enter to the while, the ResultSet wasn't empty
                                                        isResultSetEmpty = false;

                                            %>

                                        <li>Row B: <span id="1b"><%=two.getInt("total")%></span></li>
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
                                                        con.rollback();
                                                    } catch (Exception re) {
                                                        re.printStackTrace();
                                                    }
                                                }
                                                try {

                                                    Class.forName(driver).newInstance();

                                                    con = DriverManager.getConnection(url);

                                                    String querythree = "SELECT count(*) as total FROM seats Where rowid = 'C' and seatAvailability = true";
                                                    //Send query to the database and store result in ResultSet

                                                    preparedStatement = con.prepareStatement(querythree);

                                                    three = preparedStatement.executeQuery();

                                                    while (three.next()) {
                                                        //If we enter to the while, the ResultSet wasn't empty
                                                        isResultSetEmpty = false;

                                            %>

                                        <li>Row C: <span id="1c"><%=three.getInt("total")%></span></li>

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
                                                        con.rollback();
                                                    } catch (Exception re) {
                                                        re.printStackTrace();
                                                    }
                                                }
                                            %>


                                    </ul>



                                </div>
                            </div>
                        </div>

                        <div class="b-section display">
                            <div class="row">
                                <div class="big-display">
                                    <li>Section 2</li>
                                    <li>Price: <span>$40.00</span></li>
                                    <li>Seats Available:</li>
                                </div>
                                <div>

                                    <ul> 
                                        <%
                                            try {

                                                Class.forName(driver).newInstance();

                                                con = DriverManager.getConnection(url);

                                                String queryfour = "SELECT count(*) as total FROM seats Where rowid = 'D' and seatAvailability = true";
                                                //Send query to the database and store result in ResultSet

                                                preparedStatement = con.prepareStatement(queryfour);

                                                four = preparedStatement.executeQuery();

                                                while (four.next()) {
                                                    //If we enter to the while, the ResultSet wasn't empty
                                                    isResultSetEmpty = false;

                                        %>
                                        <li>Row D: <span id="2d"><%=four.getInt("total")%></span></li>

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
                                                        con.rollback();
                                                    } catch (Exception re) {
                                                        re.printStackTrace();
                                                    }
                                                }
                                                try {

                                                    Class.forName(driver).newInstance();

                                                    con = DriverManager.getConnection(url);

                                                    String queryfive = "SELECT count(*) as total FROM seats Where rowid = 'E' and seatAvailability = true";
                                                    //Send query to the database and store result in ResultSet

                                                    preparedStatement = con.prepareStatement(queryfive);

                                                    five = preparedStatement.executeQuery();

                                                    while (five.next()) {
                                                        //If we enter to the while, the ResultSet wasn't empty
                                                        isResultSetEmpty = false;

                                            %>

                                        <li>Row E: <span id="2e"><%=five.getInt("total")%></span></li>
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
                                                        con.rollback();
                                                    } catch (Exception re) {
                                                        re.printStackTrace();
                                                    }
                                                }
                                                try {

                                                    Class.forName(driver).newInstance();

                                                    con = DriverManager.getConnection(url);

                                                    String querysix = "SELECT count(*) as total FROM seats Where rowid = 'F' and seatAvailability = true";
                                                    //Send query to the database and store result in ResultSet

                                                    preparedStatement = con.prepareStatement(querysix);

                                                    six = preparedStatement.executeQuery();

                                                    while (six.next()) {
                                                        //If we enter to the while, the ResultSet wasn't empty
                                                        isResultSetEmpty = false;

                                            %>

                                        <li>Row F: <span id="2f"><%=six.getInt("total")%></span></li>

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
                                                        con.rollback();
                                                    } catch (Exception re) {
                                                        re.printStackTrace();
                                                    }
                                                }
                                            %>


                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="c-section display">
                            <div class="row">
                                <div class="big-display">
                                    <li>Section 3</li>
                                    <li>Price: <span>$30.00</span></li>
                                    <li>Seats Available:</li>
                                </div>
                                <div>
                                    <ul> 
                                        <%
                                            try {

                                                Class.forName(driver).newInstance();

                                                con = DriverManager.getConnection(url);

                                                String queryseven = "SELECT count(*) as total FROM seats Where rowid = 'G' and seatAvailability = true";
                                                //Send query to the database and store result in ResultSet

                                                preparedStatement = con.prepareStatement(queryseven);

                                                seven = preparedStatement.executeQuery();

                                                while (seven.next()) {
                                                    //If we enter to the while, the ResultSet wasn't empty
                                                    isResultSetEmpty = false;

                                        %>
                                        <li>Row G: <span id="3g"><%=seven.getInt("total")%></span></li>

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
                                                        con.rollback();
                                                    } catch (Exception re) {
                                                        re.printStackTrace();
                                                    }
                                                }
                                                try {

                                                    Class.forName(driver).newInstance();

                                                    con = DriverManager.getConnection(url);

                                                    String queryeight = "SELECT count(*) as total FROM seats Where rowid = 'H' and seatAvailability = true";
                                                    //Send query to the database and store result in ResultSet

                                                    preparedStatement = con.prepareStatement(queryeight);

                                                    eight = preparedStatement.executeQuery();

                                                    while (eight.next()) {
                                                        //If we enter to the while, the ResultSet wasn't empty
                                                        isResultSetEmpty = false;

                                            %>

                                        <li>Row H: <span id="3h"><%=eight.getInt("total")%></span></li>
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
                                                        con.rollback();
                                                    } catch (Exception re) {
                                                        re.printStackTrace();
                                                    }
                                                }
                                                try {

                                                    Class.forName(driver).newInstance();

                                                    con = DriverManager.getConnection(url);

                                                    String querynine = "SELECT count(*) as total FROM seats Where rowid = 'I' and seatAvailability = true";
                                                    //Send query to the database and store result in ResultSet

                                                    preparedStatement = con.prepareStatement(querynine);

                                                    nine = preparedStatement.executeQuery();

                                                    while (nine.next()) {
                                                        //If we enter to the while, the ResultSet wasn't empty
                                                        isResultSetEmpty = false;

                                            %>

                                        <li>Row I: <span id="3i"><%=nine.getInt("total")%></span></li>

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
                                                        con.rollback();
                                                    } catch (Exception re) {
                                                        re.printStackTrace();
                                                    }
                                                } finally {
                                                    // try to close the connection...
                                                    try {
                                                        // close the connection...
                                                        con.close();
                                                    } catch (Exception e) {
                                                        e.printStackTrace();
                                                    }
                                                }
                                            %>           
                                    </ul>

                                </div>
                            </div>

                        </div>

                    </ul>

                </div>
                <div class="fifteen sections" >
                    <img src="images/sectionC_90degrees.png" alt="" />
                    <div class="centered c-section"><h1>Section 3</h1></div>
                    <div class="top-left c-section"><h1>25</h1></div>
                    <div class="top-center c-section"><h1>25</h1></div>
                    <div class="top-right c-section"><h1>25</h1></div>
                    <div class="bottom-left c-section"><h1>I</h1></div>
                    <div class="bottom-center c-section"><h1>H</h1></div>
                    <div class="bottom-right c-section"><h1>G</h1></div>

                </div>
                <div class="fifteen sections">
                    <img src="images/sectionB_90degrees.png" alt="" />
                    <div class="centered b-section"><h1>Section 2</h1></div>
                    <div class="top-left b-section"><h1>25</h1></div>
                    <div class="top-center b-section"><h1>25</h1></div>
                    <div class="top-right b-section"><h1>25</h1></div>
                    <div class="bottom-left b-section"><h1>F</h1></div>
                    <div class="bottom-center b-section"><h1>E</h1></div>
                    <div class="bottom-right b-section"><h1>D</h1></div>
                </div>
                <div class="fifteen sections">
                    <img src="images/sectionA_90degrees.png" alt="" />
                    <div class="centered a-section"><h1>Section 1</h1></div>
                    <div class="top-left a-section"><h1>25</h1></div>
                    <div class="top-center a-section"><h1>25</h1></div>
                    <div class="top-right a-section"><h1>25</h1></div>
                    <div class="bottom-left a-section"><h1>C</h1></div>
                    <div class="bottom-center a-section"><h1>B</h1></div>
                    <div class="bottom-right a-section"><h1>A</h1></div>
                </div>
                <div class="sections">
                    <img src="images/stage.png" class="stage" alt="" />
                    <div class="centered"><h1>Main Stage</h1></div>
                </div>

            </div>

            <!-- End of Seating Section	
********************************************************************************************************************************************* 		 -->	



            <!-- Start of Contact Section	
********************************************************************************************************************************************* 		 -->	


            <form action="formprocess.jsp" method="POST" name="reservation" id="reservation">
                <h1 class="center-title">Reservation Form</h1>

                <div class="row">
                    <div class="">
                        <fieldset>
                            <legend>Customer Information</legend>
                            <table>
                                <tr>
                                    <td>
                                        <label for="CUSTOMERFIRSTNAME">First Name:</label>
                                    </td>
                                    <td>
                                        <input type="text" name="CUSTOMERFIRSTNAME" id="CUSTOMERFIRSTNAME" placeholder="Enter your first name">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="CUSTOMERLASTNAME">Last Name:</label>
                                    </td>
                                    <td>
                                        <input type="text" name="CUSTOMERLASTNAME" id="CUSTOMERLASTNAME" placeholder="Enter your last name">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="ADDRESS">Street Address:</label>
                                    </td>
                                    <td>
                                        <input type="text" name="ADDRESS" id="ADDRESS" placeholder="Enter your street address">
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <label for="CITY">City:</label>
                                    </td>
                                    <td>
                                        <input type="text" name="CITY" id="CITY" placeholder="City">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="STATE">State:</label>
                                    </td>
                                    <td>
                                        <input type="text" name="STATE" id="STATE" placeholder="State">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="ZIP">ZIP Code:</label>
                                    </td>
                                    <td>
                                        <input type="text" name="ZIP" id="ZIP" placeholder="ZIP Code">
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <label for="EMAILADDRESS">Email Address:</label>
                                    </td>
                                    <td>
                                        <input type="email" name="EMAILADDRESS" id="EMAILADDRESS" placeholder="Email Address">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="PHONENUMBER">Telephone:</label>
                                    </td>
                                    <td>
                                        <input type="tel" name="PHONENUMBER" id="PHONENUMBER" placeholder="Telephone Number">
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </div>
                    <div class="">
                        <fieldset>
                            <legend>Purchase & Delivery Information</legend>
                            <table>
                                <tr>
                                    <td>
                                        <p>How will you be purchasing?</p>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                        In-Person (at the box office) <br>
                                        Online<br>


                                    </td>
                                    <td>
                                        <input type="radio" name="ONLINEPURCHASE" id="" value= False> In-Person <br>
                                        <input type="radio" name="ONLINEPURCHASE" id="" value= True checked> Online <br>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>Online Purchases can be mailed or <br>
                                            you can print the tickets yourself</p>
                                    </td>
                                    <td>
                                        <p>A delivery fee of $5.95 will be added for mailing tickets</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Do you want to print your own tickets?<br>
                                        Do you want your tickets mailed to you?

                                    </td>
                                    <td>
                                        <input type="radio" name="TICKETPRINTMETHOD" id="" value= False> I will print <br>
                                        <input type="radio" name="TICKETPRINTMETHOD" id="" value= True checked> Please mail 

                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </div>

                    <div class="">
                        <fieldset>
                            <legend>Ticket Information</legend>
                            <table>
                                <tr>
                                    <td>

                                        How Many Tickets Do You Want?

                                    </td>
                                    <td>
                                        <input type="number" name="SEATSRESERVED" id="SEATSRESERVED" >

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        What Row do you want to sit in?
                                    </td>
                                    <td>
                                        <select name="ROWID">
                                            <option value="A">Section 1, Row A</option>
                                            <option value="B">Section 1, Row B</option>
                                            <option value="C">Section 1, Row C</option>
                                            <option value="D">Section 2, Row D</option>
                                            <option value="E">Section 2, Row E</option>
                                            <option value="F">Section 2, Row F</option>
                                            <option value="G">Section 3, Row G</option>
                                            <option value="H">Section 3, Row H</option>
                                            <option value="I">Section 3, Row I</option>
                                        </select>
                                    </td>
                                </tr>

                            </table>
                        </fieldset>
                    </div>
                </div>
                <div class="row">
                    <div class=""></div>
                    <div class=""></div>
                    <div class="">
                        <input type="submit" name="submit" id="submit" value="Submit" class="buttons">                      
                    </div>
                    <div class="">                        
                        <input type="reset" name="reset" id="reset" value="Reset" class="buttons">
                    </div>
                    <div class=""></div>
                    <div class=""></div>
                </div>

            </form>



            <!-- End of Contact Section	
********************************************************************************************************************************************* 		 -->
            <h1 class="center-title">Reports</h1>

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
