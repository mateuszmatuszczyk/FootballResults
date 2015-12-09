<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<head>
		<title>Premier League</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<link href="css/bootstrap.min.css" rel="stylesheet"/> 
		<link href="css/custom.css" rel="stylesheet"/>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
	    <script src="js/buttonScript.js"></script>
    </head>
 <body>
      
        <div id="banner">
            <img src="img/PL_Banner.png" class="img-responsive" alt="Premier League Banner"/>
        </div>
      <!-- OLD NAVBAR
      <div class="navbar navbar-static-top">
            <div class="container">
                <a href="#" class="pull-left"><img src="img/PL_Banner.png" width="1366px" height="250px"/></a>
                    
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
        </div>
    </div>

                  <div class="collapse navbar-collapse navHeaderCollapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="#">Home</a></li> 
                            <li><a href="#">Blog</a></li> 
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Social Media <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Twitter</a></li>
                                        <li><a href="#">Facebook</a></li>
                                        <li><a href="#">LinkedIn</a></li>
                                    </ul>     
                            </li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li> 
                        </ul>
                    </div> -->
        
        <div class="container">
            <div class="col-md-6">
            <button  id="Btn1" class="btn btn-primary" type="button">Click to see Week 1 Results</button><br /><br />
            <table id="week1" border=".5" class="table table-bordered">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W1']/match">
            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            <button id="Btn2" class="btn btn-primary" type="button">Click to see Week 2 Results</button><br /><br />
            <table id="week2" border=".5" class="table table-bordered">
            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W2']/match">
             <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            <button id="Btn3" class="btn btn-primary" type="button">Click to see Week 3 Results</button><br /><br />
            <table id="week3" border=".5" class="table table-bordered">
            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W3']/match">
            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            <button id="Btn4" class="btn btn-primary" type="button">Click to see Week 2 Results</button><br /><br />
            <table id="week4" border=".5" class="table table-bordered">
            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W4']/match">
            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            <button id="Btn5" class="btn btn-primary" type="button">Click to see Week 2 Results</button><br /><br />
            <table id="week5" border=".5" class="table table-bordered">
            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W5']/match">
            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            <button id="Btn6" class="btn btn-primary" type="button">Click to see Week 2 Results</button><br /><br />
            <table id="week6" border=".5" class="table table-bordered">
            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W6']/match">
            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            <button id="Btn7" class="btn btn-primary" type="button">Click to see Week 2 Results</button><br /><br />
            <table id="week7" border=".5" class="table table-bordered">
            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W7']/match">
            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
           <button id="Btn8" class="btn btn-primary" type="button">Click to see Week 2 Results</button><br /><br />
            <table id="week8" border=".5" class="table table-bordered">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W8']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn9" class="btn btn-primary" type="button">Click to see Week 2 Results</button><br /><br />
            <table id="week9" border=".5" class="table table-bordered">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W9']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn10" class="btn btn-primary" type="button">Click to see Week 2 Results</button><br /><br />
            <table id="week10" border=".5" class="table table-bordered">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W10']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn11" class="btn btn-primary" type="button">Click to see Week 2 Results</button><br /><br />
            <table id="week11" border=".5" class="table table-bordered">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W11']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn12" class="btn btn-primary" type="button">Click to see Week 2 Results</button><br /><br />
            <table id="week12" border=".5" class="table table-bordered">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W12']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn13" class="btn btn-primary" type="button">Click to see Week 2 Results</button><br /><br />
            <table id="week13" border=".5" class="table table-bordered">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W13']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn14" class="btn btn-primary" type="button">Click to see Week 2 Results</button><br /><br />
            <table id="week14" border=".5" class="table table-bordered">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W14']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn15" class="btn btn-primary" type="button">Click to see Week 2 Results</button><br /><br />
            <table id="week15" border=".5" class="table table-bordered">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W15']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
    </div>
    
            <!-- FORM allowing user to add records to PL.xml file --> 
            <div class="col-md-6">
                <form action="index.php" method="post" class="form-inline">
                    <div class="form-group">
                         <input type="text" class="form-control" name="homeTeam" placeholder="Home Team">
                         </input>
                    </div>
                </form>
                <form class="form-inline">
                    <div class="form-group">
                         <input type="text" class="form-control" name="awayTeam" placeholder="Away Team">
                         </input>
                    </div>
                </form>
                <form class="form-inline">
                    <div class="form-group">
                         <input type="date" class="form-control" name="date" placeholder="Date">
                         </input>
                    </div>
                </form>
                <form class="form-inline">
                    <div class="form-group">
                         <input type="text" class="form-control" id="homeTeamGoals" placeholder="Home Team Goals">
                         </input>
                    </div>
                </form>
                
                <form class="form-inline">
                    <div class="form-group">
                         <input type="text" class="form-control" id="awayTeamGoals" placeholder="Away Team Goals">
                         </input>
                    </div>
                
                <input type="submit" value="Add Result" id="submitBtn" class="btn btn-primary"/>
                </form>
           </div>
           
          
        
           <!-- <div id="rss">
                https://preview.c9users.io/charford/ria/RSS/RssTest.xml?_c9_id=livepreview2&_c9_host=https://ide.c9.io -->
                <!-- <a href="RSS/RssTest.xml">
                <img src="http://www-prod-storage.cloud.caltech.edu.s3.amazonaws.com/RSS_button_1021.png" width="50" height="50"/>
                Subscribe to What's New!
                </a>
            </div> -->
        </div>
        
             <div class="navbar navbar-inverse navbar-default navbar-fixed-bottom">
                <div class="container">
                    <p class="navbar-text pull-left">Created by Sam Quigley, Cian Harford &amp; Mateusz Matuszczyk.</p>
                </div>
            </div>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>