<?xml version="1.0" encoding="UTF-8"?>
 <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
     <xsl:import href="import/html.xsl" />
     <xsl:output method="xml" encoding="UTF-8" indent="yes" omit-xml-declaration="yes" />

     <xsl:template match="opml">
         <xsl:apply-templates select="body/outline">
             <xsl:sort select="@title" />
         </xsl:apply-templates>
     </xsl:template>

 </xsl:stylesheet>
