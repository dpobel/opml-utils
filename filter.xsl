<?xml version="1.0" encoding="UTF-8"?>
 <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

     <xsl:output method="xml" encoding="UTF-8" indent="yes" />

     <xsl:template match="opml">
         <opml version="1.0">
             <head>
                 <title><xsl:value-of select="head/title" /> / <xsl:value-of select="$text" /></title>
             </head>
             <body>
                 <outline>
                     <xsl:attribute name="text"><xsl:value-of select="$text" /></xsl:attribute>
                     <xsl:attribute name="title"><xsl:value-of select="$text" /></xsl:attribute>
                     <xsl:copy-of select="//outline[@text=$text]//outline[@type='rss']"/>
                 </outline>
             </body>
         </opml>
     </xsl:template>

 </xsl:stylesheet>
