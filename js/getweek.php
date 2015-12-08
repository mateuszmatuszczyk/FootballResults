<?php
 $q=$_GET["q"];

 $xmlDoc = new DOMDocument();
 $xmlDoc->load("../xml/PL.xml");

 $x=$xmlDoc->getElementsByTagName('fixtures');

 for ($i=0; $i<=$x->length-1; $i++) {
   //Process only element nodes
   if ($x->item($i)->nodeType==1) {
     if ($x->item($i)->childNodes->item(0)->nodeValue == $q) {
       $y=($x->item($i)->parentNode);
     }
   }
 }

 $week1=($y->childNodes);

 for ($i=0;$i<$week1->length;$i++) { 
   //Process only element nodes
   if ($fweek1->item($i)->nodeType==1) {
     echo("<b>" . $week1->item($i)->nodeName . ":</b> ");
     echo($week1->item($i)->childNodes->item(0)->nodeValue);
     echo("<br>");
   }
 }
 ?>