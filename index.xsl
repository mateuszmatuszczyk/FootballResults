<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<head>
		<title>Premier League</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<link href="css/bootstrap.min.css" rel="stylesheet"/> 
		<link href="css/styles.css" rel="stylesheet"/>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
	<script>
		$(document).ready(function(){
			$("#week1").fadeToggle("slow");
				$("img").fadeToggle("slow");
			$("button").click(function(){
				$("#week1").fadeToggle("slow");
				$("img").fadeToggle("slow");
				
			});
		});
		</script>
		<script> 
		$(document).ready(function(){
			$("#flip").click(function(){
				$("#panel").slideToggle("slow");
			});
		});
		</script>
		<script>
		$j('.btn btn-primary').click(function(){
    alert('Button Clicked');
})
</script>
	</head>
		<body>
		
		<div class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <a href="#" class="navbar-brand">RIA</a>
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

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
                    </div> 
            </div>
        </div>
        
        
        <div class="container">
            <div class="col-md-6">
            <button class="btn btn-primary" type="button">Click to see Week 1 Results</button><br /><br />
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
        </div>
        
        <div id="rss">
            <!-- https://preview.c9users.io/charford/ria/RSS/RssTest.xml?_c9_id=livepreview2&_c9_host=https://ide.c9.io -->
            <a href="RSS/RssTest.xml">
            <img src="http://www-prod-storage.cloud.caltech.edu.s3.amazonaws.com/RSS_button_1021.png" width="50" height="50"/>
            Subscribe to What's New!
            </a>
        </div>
        
        
    </div>
    

            
        
             <div class="navbar navbar-inverse navbar-default navbar-fixed-bottom">
                <div class="container">
                    <p class="navbar-text pull-left">Created by Sam Quigley, Cian Harford &amp; Mateusz Matuszczyk.</p>
                    <a href="#" class="navbar-btn btn btn-danger pull-right">Subscribe on youtube</a>
                  
                </div>
            </div>


		
		
		
		
		</body>
</html>
</xsl:template>
</xsl:stylesheet>