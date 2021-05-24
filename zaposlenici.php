<?php

// Load the XML source
$xml = new DOMDocument;
$xml->load('zaposlenici.xml');

$xsl = new DOMDocument;
$xsl->load('zaposlenici.xslt');

// Configure the transformer
$proc = new XSLTProcessor;
$proc->importStyleSheet($xsl); // attach the xsl rules

echo $proc->transformToXML($xml);

?>