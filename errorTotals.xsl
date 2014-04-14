<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="french" select="document('French.xml')"/>
    <xsl:variable name="slovak" select="document('Slovak.xml')"/>
    <xsl:variable name="barWidth" select="20"/>
    <xsl:variable name="scale" select="10"/>
    <xsl:variable name="scaleTR" select="100"/>
   <xsl:template match="/">
       <svg>
           <g transform="translate(30, 220)">
               <line x1="25" x2="25" y1="0" y2="-100" stroke="black" stroke-width="2"/>
               <text x="0" y="-100" stroke="black">1000</text>
               <text x="0" y="-50" stroke="black">500</text>
               <text x="0" y="-10" stroke="black">100</text>
               <line x1="25" x2="100" y1="0" y2="0" stroke="black" stroke-width="2"/>
               <rect x="80" y="-{count(.//dif) div $scale}" width="{$barWidth}" height="{count(.//dif) div $scale}" stroke="black" fill="yellow"/>
               <rect x="55" y="-{count($slovak//dif) div $scale}" width="{$barWidth}" height="{count($slovak//dif) div $scale}" stroke="black" fill="red"/>
               <rect x="30" y="-{count($french//dif) div $scale}" width="{$barWidth}" height="{count($french//dif) div $scale}" stroke="black" fill="blue"/>
               <text x="81" y="12" stroke="black">Ge</text>
               <text x="59" y="12" stroke="black">Sl</text>
               <text x="33" y="12" stroke="black">Fr</text>
               <text x="10" y="-120" stroke="black">Errors</text>
               <text x="60" y="25" stroke="black" text-anchor="middle">Version</text>
           </g>   
           <g transform="translate(30, 220)">
               <line x1="320" x2="320" y1="0" y2="-100" stroke="black" stroke-width="2"/>
               <text x="302" y="-100" stroke="black">50</text>
               <text x="302" y="-50" stroke="black">25</text>
               <text x="302" y="-20" stroke="black">10</text>
               <line x1="320" x2="400" y1="0" y2="0" stroke="black" stroke-width="2"/>
               <rect x="375" y="-{count(.//s[@tr='1']) div 373 * $scaleTR}" width="{$barWidth}" height="{count(.//s[@tr='1']) div 373 * $scaleTR}" stroke="black" fill="yellow"/>
               <rect x="350" y="-{count($slovak//s[@tr='1']) div 346 * $scaleTR}" width="{$barWidth}" height="{count($slovak//s[@tr='1']) div 346 * $scaleTR}" stroke="black" fill="red"/>
               <rect x="325" y="-{count($french//s[@tr='1']) div 283 * $scaleTR}" width="{$barWidth}" height="{count($french//s[@tr='1']) div 283 * $scaleTR}" stroke="black" fill="blue"/>
               <text x="376" y="12" stroke="black">Ge</text>
               <text x="354" y="12" stroke="black">Sl</text>
               <text x="328" y="12" stroke="black">Fr</text>
               <text x="285" y="-120" stroke="black">Sucky Sentences %</text>
               <text x="355" y="25" stroke="black" text-anchor="middle">Version</text>
           </g> 
       </svg>
   </xsl:template>
</xsl:stylesheet>