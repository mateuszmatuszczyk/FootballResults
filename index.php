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
?>

