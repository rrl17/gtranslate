<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xhtml" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Google Translate</title>
            </head>
            <body>
                <h2>German</h2>
                <table border="3">
                    <tr>
                        <th>Word</th>
                        <th>Lexical Category</th>
                        <th>Error type</th>
                    </tr>
                    <xsl:apply-templates select="//dif"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="dif">
        <tr>
            <td>
                <a href="germanoutput.html#id"><xsl:apply-templates/></a>
            </td>
            <td>
                <xsl:apply-templates select="@pos"/>
            </td>
            <td>
                <xsl:apply-templates select="@type"/>
            </td>
        </tr>        
    </xsl:template>
    <xsl:template match="@pos">        
        <xsl:choose>
            <xsl:when test=".='det'">
                <xsl:text>determiner</xsl:text>
            </xsl:when>
            <xsl:when test=".='n'">
                <xsl:text>noun</xsl:text>
            </xsl:when>
            <xsl:when test=".='v'">
                <xsl:text>verb</xsl:text>
            </xsl:when>
            <xsl:when test=".='adj'">
                <xsl:text>adjective</xsl:text>
            </xsl:when>
            <xsl:when test=".='adv'">
                <xsl:text>adverb</xsl:text>
            </xsl:when>
            <xsl:when test=".='pp'">
                <xsl:text>preposition</xsl:text>
            </xsl:when>            
            <xsl:when test=".='pro'">
                <xsl:text>pronoun</xsl:text>
            </xsl:when>
            <xsl:when test=".='conj'">
                <xsl:text>conjunction</xsl:text>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@type">
        <xsl:choose>
            <xsl:when test=".='cas'">
                <xsl:text>case</xsl:text>
            </xsl:when>
            <xsl:when test=".='ten'">
                <xsl:text>tense</xsl:text>
            </xsl:when>
            <xsl:when test=".='num'">
                <xsl:text>number</xsl:text>
            </xsl:when>
            <xsl:when test=".='asp'">
                <xsl:text>aspect</xsl:text>
            </xsl:when>
            <xsl:when test=".='mod'">
                <xsl:text>mood</xsl:text>
            </xsl:when>
            <xsl:when test=".='per'">
                <xsl:text>person</xsl:text>
            </xsl:when>
            <xsl:when test=".='mst'">
                <xsl:text>mistranslation</xsl:text>
            </xsl:when>
            <xsl:when test=".='del'">
                <xsl:text>deleted word</xsl:text>
            </xsl:when>
            <xsl:when test=".='gen'">
                <xsl:text>gender</xsl:text>
            </xsl:when>
            <xsl:when test=".='mis'">
                <xsl:text>missing word</xsl:text>
            </xsl:when>
            <xsl:when test=".='pos'">
                <xsl:text>lexical category</xsl:text>
            </xsl:when>
        </xsl:choose>        
    </xsl:template>    
</xsl:stylesheet>
<xsl:choose>
    <xsl:when test="@pos='det'">
        <xsl:text>determiner</xsl:text>
    </xsl:when>
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
    <xsl:when test="@pos='conj'">
        <xsl:text>conjunction</xsl:text>
    </xsl:when>
</xsl:choose>
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
    <xsl:when test="@type='mst'">
        <xsl:text>mistranslation</xsl:text>
    </xsl:when>
    <xsl:when test="@type='del'">
        <xsl:text>deleted word</xsl:text>
    </xsl:when>
    <xsl:when test="@type='gen'">
        <xsl:text>gender</xsl:text>
    </xsl:when>
    <xsl:when test="@type='pos'">
        <xsl:text>lexical category</xsl:text>
    </xsl:when>
</xsl:choose> 