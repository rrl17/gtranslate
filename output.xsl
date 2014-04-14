<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xhtml" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="squiggle.css"/>
                <title>Harry Potter Translate by Google</title>
            </head>
            <body>     
                <h2>Chapter One</h2>
                <xsl:apply-templates/>                
            </body>
        </html>
    </xsl:template>
    <xsl:template match="chapter/p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="s">
        <span class="s">
        <xsl:choose>
            <xsl:when test="@tr='1'">
                <span class="ast">*</span>
            </xsl:when>
            <xsl:when test="@tr='0'">
            </xsl:when>
            <xsl:otherwise>
                <xsl:attribute name="style">font-style: italic;</xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:apply-templates/></span>
    </xsl:template>  
    <xsl:template match="dif">
        <span class="dif {@pos} {@type}" id="n{@id}">  
        <xsl:apply-templates/></span>
    </xsl:template>
</xsl:stylesheet>