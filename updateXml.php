<?php
/*
 * Loading a XML from a file, adding new elements and editing elements
 */
ini_set('display_errors', 'On');
error_reporting(E_ALL);
//get entry from form
$homeTeam = $_POST["homeTeam"];
$awayTeam = $_POST["awayTeam"];
$date = $_POST["date"];
$homeTeamGoals = $_POST["homeTeamGoals"];
$awayTeamGoals = $_POST["awayTeamGoals"];
echo $type;

if (file_exists('PL.xml')) {
    //loads the xml and returns a simplexml object
    $xml = simplexml_load_file('PL.xml');
    //print_r($xml);
    
    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
    //echo htmlentities($xmlFormat);


    //displaying the element in proper format
  echo '<u><b>This is the xml code from test2.xml:</b></u>
     <br /><br />
     <pre>' . htmlentities($xmlFormat, ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre><br /><br />'; 

    //adding new child to the xml
    $newChild = $xml->addChild('match');
    $newChild->addChild('homeTeam', $homeTeam);
    $newChild->addChild('awayTeam', $awayTeam);
    $newChild->addChild('date', $date);
    $newChild->addChild('homeTeamGoals', $homeTeamGoals);
    $newChild->addChild('awayTeamGoals', $awayTeamGoals);
  
    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
   // echo htmlentities($xmlFormat);

    //displaying the element in proper format
   echo '<u><b>This is the xml code from product.xml with new elements added:</b></u>
     <br /><br />
     <pre>' . htmlentities($xmlFormat, ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre>';

file_put_contents('product.xml', $xml->saveXML());


} else {
    exit('Failed to open product.xml.'); 
}
    
?>