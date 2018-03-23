<%-- 
    Document   : index
    Created on : Mar 23, 2018, 3:16:56 AM
    Author     : stone
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
	
    <div class="container spacing">
        <div class="row">
            <div></div>
            <div class="forty-five">
                    <img src="images/pageLogo.png" alt="" />
            </div>
            <div></div>
        </div>	
		<!-- End of Main Section	
********************************************************************************************************************************************* 		 -->
		
		<!-- Start of Seating Section	
********************************************************************************************************************************************* 		 -->

        <div class="row spacing">
            <div class="sections">
                <ul>
                    <li class="a-section">
                        <ul>
                            <li>Section 1</li>
                            <li>Seats Available: <span>75</span></li>
                            <li>Price: <span>$50.00</span></li>
                        </ul>
                    </li>
                    <li class="b-section">
                        <ul>
                            <li>Section 2</li>
                            <li>Seats Available: <span>75</span></li>
                            <li>Price: <span>$40.00</span></li>
                        </ul>
                    </li>
                    <li class="c-section">
                        <ul>
                            <li>Section 3</li>
                            <li>Seats Available: <span>75</span></li>
                            <li>Price: <span>$30.00</span></li>	
                        </ul>
                    </li>
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
        <form action="" method="post" name="reservation" id="reservation">

            <div class="row">
            <div class="">
                <fieldset>
                    <legend>Customer Information</legend>
                    <table>
                        <tr>
                            <td>
                                <label for="first-name">First Name:</label>
                            </td>
                            <td>
                                <input type="text" name="name" id="first-name" placeholder="Enter your first name">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="last-name">Last Name:</label>
                            </td>
                            <td>
                                <input type="text" name="name" id="last-name" placeholder="Enter your last name">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="street-address">Street Address:</label>
                            </td>
                            <td>
                                <input type="text" name="address" id="street-address" placeholder="Enter your street address">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="street-address-2">Address Line Two:</label>
                            </td>
                            <td>
                                <input type="text" name="address" id="street-address-2" placeholder="Address Line Two">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="city">City:</label>
                            </td>
                            <td>
                                <input type="text" name="address" id="city" placeholder="City">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="state">State:</label>
                            </td>
                            <td>
                                <input type="text" name="address" id="state" placeholder="State">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="zip">ZIP Code:</label>
                            </td>
                            <td>
                                <input type="text" name="address" id="zip" placeholder="ZIP Code">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="phone">Telephone:</label>
                            </td>
                            <td>
                                <input type="tel" name="contact-info" id="phone" placeholder="Telephone Number">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="cust-email">Email Address:</label>
                            </td>
                            <td>
                                <input type="email" name="contact-info" id="cust-email" placeholder="Email Address">
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
                                Will Call (Online, but picking up at box office)

                            </td>
                            <td>
                                <input type="radio" name="pick-up-type" id="" value="In-Person"> In-Person <br>
                                <input type="radio" name="pick-up-type" id="" value="Online" checked> Online <br>
                                <input type="radio" name="pick-up-type" id="" value="will-call"> Will Call
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>Online Purchases can be mailed or <br>
                                you can print the tickets yourself</p>
                            </td>
                            <td>
                                <p>A delivery fee of $2.75 will be added for mailing tickets</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Do you want to print your own tickets?<br>
                                Do you want your tickets mailed to you?

                            </td>
                            <td>
                                <input type="radio" name="delivery-type" id="" value="print"> I will print <br>
                                <input type="radio" name="delivery-type" id="" value="mail" checked> Please mail 

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
                                <input type="number" name="number-tickets" id="ticketsPurchased" >

                        </td>
                    </tr>
                    <tr>
                        <td>
                            What Row do you want to sit in?
                        </td>
                        <td>
                            <select>
                                <option value="a">Section 1, Row A</option>
                                <option value="b">Section 1, Row B</option>
                                <option vlaue="c">Section 1, Row C</option>
                                <option value="d">Section 2, Row D</option>
                                <option value="e">Section 2, Row E</option>
                                <option vlaue="f">Section 2, Row F</option>
                                <option value="g">Section 3, Row G</option>
                                <option value="h">Section 3, Row H</option>
                                <option vlaue="i">Section 3, Row I</option>
                            </select>
                        </td>
                    </tr>

                    </table>
                </fieldset>
            </div>
            </div>
            <div class="row">
                <div class=""></div>
                <div class="">
                        <button class="buttons">Review Your Order</button>
                        <input type="submit" name="submit" id="submit" value="Submit" class="buttons">
                        <input type="reset" name="reset" id="reset" value="Reset" class="buttons">
                </div>
                <div class=""></div>
            </div>

        </form>



		<!-- End of Contact Section	
********************************************************************************************************************************************* 		 -->


		<!-- Start of Footer Section	
********************************************************************************************************************************************* 		 -->
    <footer>
        <div class="row spacing spacing-bottom">
            <div class="cell">
                    <a href="http://validator.w3.org/check?uri=referer" class="htmlValidator2 sprite space-right"></a>

                    <a href="http://jigsaw.w3.org/css-validator/check/referer" class="cssValidator2 sprite space-left"></a>
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
