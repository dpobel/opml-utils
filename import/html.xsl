<?xml version="1.0" encoding="UTF-8"?>
 <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
     <xsl:template match="outline[not(@type='rss')]">
         <section>
             <h2><xsl:value-of select="@title" /></h2>
             <ul>
                 <xsl:apply-templates select="outline[@type='rss']">
                     <xsl:sort select="@title" />
                 </xsl:apply-templates>
             </ul>
             <xsl:apply-templates select="outline[not(@type='rss')]">
                 <xsl:sort select="@title" />
             </xsl:apply-templates>
         </section>
     </xsl:template>

     <xsl:template match="outline[@type='rss']">
         <li>
             <a href="{@htmlUrl}"><xsl:value-of select="@title" /></a>
             (<a href="{@xmlUrl}">RSS</a>)
         </li>
     </xsl:template>
 </xsl:stylesheet>
