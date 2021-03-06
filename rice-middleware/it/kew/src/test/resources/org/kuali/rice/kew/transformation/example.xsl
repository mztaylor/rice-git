<!--

    Copyright 2005-2014 The Kuali Foundation

    Licensed under the Educational Community License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.opensource.org/licenses/ecl2.php

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

-->
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">

<xsl:output method="html" indent="yes"/>
<xsl:include href="example3.xsl"/>

<xsl:template match="/">
  <html>
    <xsl:apply-templates/>
  <hr/>
  </html>
</xsl:template>

<xsl:template match="sms">
  <head>
   <title>
    A simple message 
   </title>
  </head>
   <body>
    <xsl:apply-templates/>
   </body>
</xsl:template>

<xsl:template match="title">
  <hr/>
  <h1>
    <xsl:apply-templates/>
  </h1>
</xsl:template>

<xsl:template match="mesg">
  <p>
    <xsl:apply-templates/>
  </p>
</xsl:template>

<xsl:template match="tm">
    <xsl:apply-templates/>
  <sup>(TM)</sup>
</xsl:template>

<xsl:template match="like">
  <xsl:call-template name="like"/>
</xsl:template>



</xsl:stylesheet>

