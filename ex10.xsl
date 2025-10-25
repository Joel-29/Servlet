<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Cricket Player List</title>
                <style>
                    table { border-collapse: collapse; width: 60%; margin: 20px auto; }
                    th, td { border: 1px solid black; padding: 10px; text-align: center; }
                    th { background-color: #f2a900; color: white; }
                    tr:nth-child(even) { background-color: #f2f2f2; }
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">Cricket Players</h1>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Country</th>
                        <th>Role</th>
                        <th>Matches Played</th>
                    </tr>
                    <xsl:for-each select="players/player">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="country"/></td>
                            <td><xsl:value-of select="role"/></td>
                            <td><xsl:value-of select="matches"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
