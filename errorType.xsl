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
            <g transform="translate(30, 620)">
                <line x1="10" x2="10" y1="0" y2="-600" stroke="black" stroke-width="1"/>
                <line x1="10" x2="556" y1="0" y2="0" stroke="black" stroke-width="1"/>
                <xsl:apply-templates/>
            </g>
            
        </svg>
    </xsl:template>
    <xsl:template match="type">
        <xsl:variable name="type" select="string(.)"/>
        <xsl:variable name="pos" select="position()*50 + 20"/>
        <rect x="{$pos - 30}" y="-{count($german//dif[@type=$type]) * $scale}" width="{$barWidth}" height="{count($german//dif[@type=$type]) * $scale}" stroke="black" fill="gold"/>
        <rect x="{$pos - 45}" y="-{count($slovak//dif[@type=$type]) * $scale}" width="{$barWidth}" height="{count($slovak//dif[@type=$type]) * $scale}" stroke="black" fill="red"/>
        <rect x="{$pos - 60}" y="-{count($french//dif[@type=$type]) * $scale}" width="{$barWidth}" height="{count($french//dif[@type=$type]) * $scale}" stroke="black" fill="blue"/>
        <text x="{$pos - 38}" y="15" stroke="black" text-anchor="middle"><xsl:value-of select="text()"/></text>
        <text x="200" y="-600" stroke="black" text-anchor="middle">Errors by Type</text>
        <rect x="438" y="-410" width="10" height="10" stroke="black" fill="gold"/>
        <rect x="438" y="-430" width="10" height="10" stroke="black" fill="red"/>
        <rect x="438" y="-450" width="10" height="10" stroke="black" fill="blue"/>
        <text x="450" y="-400" stroke="black">German</text>
        <text x="450" y="-420" stroke="black">Slovak</text>
        <text x="450" y="-440" stroke="black">French</text>
        <text x="0" y="-{50 * $scale}" stroke="black">50</text>
        <text x="0" y="-{100 * $scale}" stroke="black">100</text>
        <text x="0" y="-{150 * $scale}" stroke="black">150</text>
        <text x="0" y="-{200 * $scale}" stroke="black">200</text>
        <text x="0" y="-{250 * $scale}" stroke="black">250</text>
        <text x="0" y="-{300 * $scale}" stroke="black">300</text>
        <text x="0" y="-{350 * $scale}" stroke="black">350</text>
    </xsl:template>
</xsl:stylesheet>