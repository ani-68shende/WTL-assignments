<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
    <head>
        <title>Movie XML file</title>
    </head>
    <body style="font-family: sans-serif;">
    <h1 style="text-align: center; margin-top: 5rem;">Movies</h1>
    <table border="1" cellpadding ="7" style="margin-left:auto; margin-right: auto; text-align: center">
        <tr style="background-color: #eb5f34; color: white;">
        <th style="text-align:left">Title of Movie</th>
        <th style="text-align:left">Year of Release</th>
        <th style="text-align:left">IMDB Rating</th>
        <th style="text-align:left">Rotten Tomatoes</th>
        <th style="text-align:left">Director</th>
        <th style="text-align:left">Genre of Movie</th>
        </tr>
        <xsl:for-each select="movie/md">
        <tr style="background-color: #ebd834;">
        <td style="color: rgb(43, 3, 80); font-weight: 700;"><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="year"/></td>
        <td><xsl:value-of select="imdb"/></td>
        <td><xsl:value-of select="rtomatoes"/></td>
        <td><xsl:value-of select="director"/></td>
        <td><xsl:value-of select="genre"/></td>
        </tr>
        </xsl:for-each>
    </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>