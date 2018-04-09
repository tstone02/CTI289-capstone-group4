<%-- 
    Document   : reports
    Created on : Apr 9, 2018, 2:44:06 AM
    Author     : stone
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page language="java" import="java.util.*" errorPage="" %> 
<%@ page import="java.sql.*"%>

<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jazzervations Sales Reports</title>

<link rel="stylesheet" href="styles/jazz_style.css" type="text/css">
    </head>
    <body>
        <!-- Start of Main Section	
********************************************************************************************************************************************* 		 -->

        <div class="container spacing" id="top">
            <div class="row">
                <div class="instructions">
                    <h2 class="center-title">Reports</h2>
                    
                    <button class="buttons">Number of Tickets Sold in each Category</button>
                    <br><br>
                    <button class="buttons">Number of Seats Available in each Category</button>
                     <br><br>
                    <button class="buttons">Total Sales in each Category</button>
                     <br><br>
                    <button class="buttons">Total Sales</button>
                    <!--
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


                    </dl> -->
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
            <br><hr><br>
            <!-- End of Main Section	
********************************************************************************************************************************************* 		 -->
        
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
 
        </div>
    </body>
</html>
