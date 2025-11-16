<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Relevé Bancaire</title>
            </head>
            <body>
                
                <h2>Relevé Bancaire : <xsl:value-of select="releve/@RIB"/></h2>
                <p>Date du relevé : <b><xsl:value-of select="releve/dateReleve"/></b></p>
                <p>Solde : <b><xsl:value-of select="releve/solde"/></b> MAD</p>
                
                <h3>Liste des opérations</h3>
                <table border="1" cellpadding="6">
                    <tr bgcolor="#cccccc">
                        <th>Type</th><th>Date</th><th>Montant</th><th>Description</th>
                    </tr>
                    
                    <xsl:for-each select="releve/operations/operation">
                        <tr>
                            <td><xsl:value-of select="@type"/></td>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="@montant"/></td>
                            <td><xsl:value-of select="@description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                <h3>Totaux</h3>
                
                <p>Total CREDIT :
                    <b>
                        <xsl:value-of select="sum(releve/operations/operation[@type='CREDIT']/@montant)"/>
                    </b> MAD
                </p>
                
                <p>Total DEBIT :
                    <b>
                        <xsl:value-of select="sum(releve/operations/operation[@type='DEBIT']/@montant)"/>
                    </b> MAD
                </p>
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
