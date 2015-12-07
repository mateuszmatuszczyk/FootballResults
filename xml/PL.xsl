<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Week:
    <xsl:for-each select="premierleague/fixtures">
      <xsl:value-of select="week/@id"/>
    </xsl:for-each>
  </h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th style="text-align:left">Date</th>
        <th style="text-align:left">Home Team</th>
        <th style="text-align:left">Away Team</th>
        <th style="text-align:left">Result</th>
      </tr>
      <xsl:for-each select="premierleague/fixtures/week[@id='W1']/match">


      <tr>
        <td><xsl:value-of select="date"/></td>
        <td><xsl:value-of select="homeTeam"/></td>
        <td><xsl:value-of select="awayTeam"/></td>
        <td><xsl:value-of select="Goals/homeTeamGoals"/>:
        <xsl:value-of select="Goals/awayTeamGoals"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>