<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0" xmlns="http=//www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:variable name="german" select="document('German.xml')"/>
    <xsl:variable name="french" select="document('French.xml')"/>
    <xsl:variable name="slovak" select="document('Slovak.xml')"/>
    <xsl:variable name="barWidth" select="15"/>
    <xsl:variable name="scale" select="1.5"/>
    <xsl:template match="/">
        <svg>
            <g transform="translate(30, 600)">
                <line x1="10" x2="10" y1="-0" y2="-400" stroke="black" stroke-width="1"/>
                <line x1="10" x2="500" y1="0" y2="0" stroke="black" stroke-width="1"/>
                <xsl:apply-templates/>
            </g>
            
        </svg>
    </xsl:template>
    
    <xsl:template match="pos">
        <xsl:variable name="Pos" select="string(.)"/>
        <xsl:variable name="pos" select="position()*55 + 15"/>
        <rect x="{$pos - 30}" y="-{count($german//dif[@pos=$Pos]) * $scale}" width="{$barWidth}" height="{count($german//dif[@pos=$Pos]) * $scale}" stroke="black" fill="gold"/>
        <rect x="{$pos - 45}" y="-{count($slovak//dif[@pos=$Pos]) * $scale}" width="{$barWidth}" height="{count($slovak//dif[@pos=$Pos]) * $scale}" stroke="black" fill="red"/>
        <rect x="{$pos - 60}" y="-{count($french//dif[@pos=$Pos]) * $scale}" width="{$barWidth}" height="{count($french//dif[@pos=$Pos]) * $scale}" stroke="black" fill="blue"/>
        <text x="{$pos - 38}" y="15" stroke="black" text-anchor="middle"><xsl:value-of select="text()"/></text>
        <text x="250" y="-380" stroke="black" text-anchor="middle">Errors by Part of Speech</text>
        <text x="250" y="30" stroke="black" text-anchor="middle">Part of Speech</text>
        <text x="0" y="-{50 * $scale}" stroke="black">50</text>
        <text x="0" y="-{100 * $scale}" stroke="black">100</text>
        <text x="0" y="-{150 * $scale}" stroke="black">150</text>
        <text x="0" y="-{200 * $scale}" stroke="black">200</text>
        <text x="0" y="-{250 * $scale}" stroke="black">250</text>
    </xsl:template>
</xsl:stylesheet>