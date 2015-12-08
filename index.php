<?php

//Load the xml file
$xml = new DOMDocument;
$xml -> load('xml/PL.xml');
$xsl = new DOMDocument;
$xsl -> subsituteEntities = true;
$xsl -> load('index.xsl');

//configure the transformer 
$proc = new XSLTProcessor;
$proc -> importStyleSheet($xsl); //attach the xsl rules

echo $proc -> transformToXML($xml);


if(isset($_REQUEST['ok']))
{
   
    
    $rootTag =$xml->getElementByTagName("fixtures")->item(0);
    
    $FixturesTag = $xml->createElement("week16");
    $homeTeamTag = $xml->createElement("homeTeam",$_REQUEST['homeTeam']);
    $awayTeamTag = $xml->createElement("awayTeam",$_REQUEST['awayTeam']);
    $inputResultTag = $xml->createElement("inputDate",$_REQUEST['inputDate']);
    $inputDateTag = $xml->createElement("inputResult",$_REQUEST['inputResult']);
    
    $homeTeamTag->appendChild($homeTeamTag);
    $awayTeamTag->appendChild($awayTeamTag);
    $inputResultTag->appendChild($inputResultTag);
    $inputDateTag->appendChild($inputDateTag);
    
    $rootTag->appendChild($FixturesTag);
    
    $xml->save("xml/PL.xml");
    
    
}

?>