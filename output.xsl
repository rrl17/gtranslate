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
        <span class="dif" id="n{@id}">
            <xsl:apply-templates/>
            <span class="box">
                Part Of Speech: 
                <xsl:choose>
                    <xsl:when test="@pos='det'">
                        <xsl:text>determiner</xsl:text>
                    </xsl:when>
                    <xsl:when test="@pos='n'">
                        <xsl:text>noun</xsl:text>
                    </xsl:when>
                    <xsl:when test="@pos='v'">
                        <xsl:text>verb</xsl:text>
                    </xsl:when>
                    <xsl:when test="@pos='adj'">
                        <xsl:text>adjective</xsl:text>
                    </xsl:when>
                    <xsl:when test="@pos='adv'">
                        <xsl:text>adverb</xsl:text>
                    </xsl:when>
                    <xsl:when test="@pos='pp'">
                        <xsl:text>preposition</xsl:text>
                    </xsl:when>            
                    <xsl:when test="@pos='pro'">
                        <xsl:text>pronoun</xsl:text>
                    </xsl:when>
                    <xsl:when test="@pos='int'">
                        <xsl:text>interjection</xsl:text>
                    </xsl:when>
                    <xsl:when test="@pos='conj'">
                        <xsl:text>conjunction</xsl:text>
                    </xsl:when>
                </xsl:choose>
                Error Type: 
                <xsl:choose>
                    <xsl:when test="@type='cas'">
                        <xsl:text>case</xsl:text>
                    </xsl:when>
                    <xsl:when test="@type='ten'">
                        <xsl:text>tense</xsl:text>
                    </xsl:when>
                    <xsl:when test="@type='num'">
                        <xsl:text>number</xsl:text>
                    </xsl:when>
                    <xsl:when test="@type='asp'">
                        <xsl:text>aspect</xsl:text>
                    </xsl:when>
                    <xsl:when test="@type='moo'">
                        <xsl:text>mood</xsl:text>
                    </xsl:when>
                    <xsl:when test="@type='per'">
                        <xsl:text>person</xsl:text>
                    </xsl:when>
                    <xsl:when test="@type='ins'">
                        <xsl:text>insertion</xsl:text>
                    </xsl:when>
                    <xsl:when test="@type='mst'">
                        <xsl:text>mistranslation</xsl:text>
                    </xsl:when>
                    <xsl:when test="@type='del'">
                        <xsl:text>deletion</xsl:text>
                    </xsl:when>
                    <xsl:when test="@type='gen'">
                        <xsl:text>gender</xsl:text>
                    </xsl:when>
                    <xsl:when test="@type='pos'">
                        <xsl:text>lexical category</xsl:text>
                    </xsl:when>
                </xsl:choose></span>
        </span>
    </xsl:template>
</xsl:stylesheet>