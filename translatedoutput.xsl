<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xhtml" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <link rel="stylesheet" type="text/css" href="general.css" />
                <link rel="stylesheet" type="text/css" href="squiggle.css"/>
                <title>Harry Potter Translate by Google</title>
            </head>
            <body>
                <div class="img">
                    <img src="germanoutputimg.jpg" alt="reparo!" />
                </div>
                <h1>German</h1>
                <div id="menu">
                    <ul>
                        <li><a href="index.html"><span>Home</span></a></li>
                        <li class="drop"><a><i>Lumos!</i></a>
                            <ul>
                                <li><a href="goals.html"><span>Research Questions and Goals</span></a></li>
                                <li><a href="dig.html"><span>Digital Humanities</span></a></li>
                                <li><a href="auth.html"><span>Authors</span></a></li>
                                <li><a href="blog.html"><span>Blog</span></a></li>
                            </ul>
                        </li>
                        <li class="drop"><a>Background</a>
                            <ul>
                                <li><a href="ling.html"><span>What is linguistics?</span></a></li>
                                <li><a href="googletrans.html"><span>How Google Translates</span></a></li>
                                <li><a href="indoeuropean.html"><span>The Indo-European Language
                                    Family</span></a></li>
                            </ul></li>
                        <li class="drop"><a>Research</a>
                            <ul>
                                <li><a href="hyp.html"><span>Hypothesis</span></a></li>
                                <li><a href="meth.html"><span>Method</span></a></li>
                                <li><a href="results.html"><span>Results</span></a></li>
                                <li><a href="disc.html"><span>Discussion</span></a></li>
                            </ul></li>
                        <li class="drop"><a>Data</a>
                            <ul>
                                <li><a href="germanoutput.html"><span>Deutsch</span></a></li>
                                <li><a href="frenchoutput.html"><span>Le Français</span></a></li>
                                <li><a href="slovakoutput.html"><span>Slovenčina</span></a></li>
                                <li><a href="raw.html"><span>Raw Files</span></a></li>
                            </ul></li>
                        <li class="drop"><a>All was well.</a>
                            <ul>
                                <li><a href="future.html"><span>Future Research</span></a></li>
                                <li><a href="thanks.html"><span>Thanks</span></a></li>
                                <li><a href="resources.html"><span>Further Resources</span></a></li>
                                <li><a href="bib.html"><span>References</span></a></li>
                            </ul></li>
                    </ul>
                </div>
                <br/>        
                <br/>
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
            <xsl:when test="@tr='0'"/>            
            <xsl:otherwise>
                <xsl:attribute name="style">font-style: italic;</xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:apply-templates/></span>
    </xsl:template>  
    <xsl:template match="dif">
        <span class="dif" id="n{@id}">
        <xsl:apply-templates/></span>
    </xsl:template>
</xsl:stylesheet>