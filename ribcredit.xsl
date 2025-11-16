<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Opérations CREDIT</title>
            </head>
            <body>
                
                <h2>Opérations CREDIT du relevé bancaire</h2>
                
                <table border="1" cellpadding="6">
                    <tr bgcolor="#cccccc">
                        <th>Date</th><th>Montant</th><th>Description</th>
                    </tr>
                    
                    <xsl:for-each select="releve/operations/operation[@type='CREDIT']">
                        <tr>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="@montant"/></td>
                            <td><xsl:value-of select="@description"/></td>
                        </tr>
                    </xsl:for-each>
                    
                </table>
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
