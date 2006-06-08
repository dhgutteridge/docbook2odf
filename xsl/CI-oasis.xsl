<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	xmlns:office="http://openoffice.org/2000/office"
	xmlns:style="http://openoffice.org/2000/style"
	xmlns:text="http://openoffice.org/2000/text"
	xmlns:table="http://openoffice.org/2000/table"
	xmlns:draw="http://openoffice.org/2000/drawing"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:meta="http://openoffice.org/2000/meta"
	xmlns:number="http://openoffice.org/2000/datastyle"
	xmlns:svg="http://www.w3.org/2000/svg"
	xmlns:chart="http://openoffice.org/2000/chart"
	xmlns:dr3d="http://openoffice.org/2000/dr3d"
	xmlns:math="http://www.w3.org/1998/Math/MathML"
	xmlns:form="http://openoffice.org/2000/form"
	xmlns:script="http://openoffice.org/2000/script"
	xmlns:config="http://openoffice.org/2001/config"
	xmlns:presentation="urn:oasis:names:tc:opendocument:xmlns:presentation:1.0"
	office:class="text"
	office:version="1.0">
	
	
<!-- CORPORATE IDENTITY -->
	
<!-- PARAMS -->
<xsl:param name="CI.style.color">#323298</xsl:param>
<xsl:param name="CI.style.color.bg">#F5F5F5</xsl:param>
<xsl:param name="CI.style.color2">#FFFFFF</xsl:param> <!-- presentation background -->
<xsl:param name="CI.style.color-presentation_abstract">#808080</xsl:param>
<xsl:param name="CI.style.color-presentation_para">#8080E0</xsl:param>
	
	
	
<!-- OBJECTS -->

<xsl:template name="CI.document-styles.automatic-styles">
	
	<style:style
		style:name="CI.para-legal"
		style:family="paragraph"
		style:parent-style-name="Footer">
		<style:paragraph-properties
			fo:text-align="center"
			style:justify-single-word="false"/>
		<style:text-properties
			fo:font-size="7pt"/>
	</style:style>
	
	
	<style:style
		style:name="CI.footer-start"
		style:family="paragraph"
		style:parent-style-name="Footer">
		<style:paragraph-properties
			fo:margin-top="0.05cm"
			fo:margin-right="0.1cm"
			fo:text-align="start"
			style:justify-single-word="false"/>
		<style:text-properties
			fo:font-size="7pt"/>
	</style:style>
	<style:style
		style:name="CI.footer-end"
		style:family="paragraph"
		style:parent-style-name="Footer">
		<style:paragraph-properties
			fo:margin-top="0.05cm"
			fo:margin-right="0.1cm"
			fo:text-align="end"
			style:justify-single-word="false"/>
		<style:text-properties
			fo:font-size="7pt"/>
	</style:style>
	
	
	<style:style
		style:name="CI.para-line"
		style:family="paragraph"
		style:parent-style-name="Header">
		<style:paragraph-properties
			fo:text-align="left"
			style:justify-single-word="false"/>
		<style:text-properties
			style:text-rotation-angle="90"
			style:text-rotation-scale="line-height"
			fo:letter-spacing="0.07cm"/>
	</style:style>
	
	<style:style
		style:name="CI.text-line"
		style:family="text">
		<style:text-properties
			style:font-name="Arial Black"
			fo:font-size="7pt"
			fo:color="#FFFFFF"/>
	</style:style>
	
	<!-- red box -->
	<style:style style:name="CI.line" style:family="graphic">
		<style:graphic-properties
			draw:textarea-horizontal-align="left"
			draw:textarea-vertical-align="middle"
			draw:stroke="solid"
			fo:padding-left="2cm"
			svg:stroke-width="0.0cm"
			style:run-through="foreground"
			style:wrap="run-through"
			style:number-wrapped-paragraphs="no-limit"
			style:vertical-pos="bottom"
			style:vertical-rel="page"
			style:horizontal-pos="right"
			style:horizontal-rel="page">
			<xsl:attribute name="draw:fill-color"><xsl:value-of select="$CI.style.color"/></xsl:attribute>
			<xsl:attribute name="svg:stroke-color"><xsl:value-of select="$CI.style.color"/></xsl:attribute>
		</style:graphic-properties>
	</style:style>
	
</xsl:template>
	
	
	
	
	
<xsl:template name="CI.pagedefault.header">
	<style:header>
		<text:p>
			<!--REDLINE-->
			<xsl:element name="draw:rect">
				<xsl:attribute name="text:anchor-type">paragraph</xsl:attribute>
				<xsl:attribute name="text:rotation-angle">90</xsl:attribute>
				<xsl:attribute name="draw:z-index">0</xsl:attribute>
				<xsl:attribute name="draw:style-name">CI.line</xsl:attribute>
				<xsl:attribute name="draw:text-style-name">CI.para-line</xsl:attribute>
				<xsl:attribute name="draw:transform">rotate(1.571)</xsl:attribute>
				<xsl:attribute name="svg:width">28.2cm</xsl:attribute>
				<xsl:attribute name="svg:height">1.0cm</xsl:attribute>
				<xsl:attribute name="svg:x">1.0cm</xsl:attribute>
				<xsl:attribute name="svg:y">0.0cm</xsl:attribute>
				<text:p text:style-name="CI.para-line"><text:span text:style-name="CI.text-line">Copyright © OASIS Open 2002 - 2005. All Rights Reserved.</text:span></text:p>
			</xsl:element>
		</text:p>
	</style:header>
</xsl:template>


<xsl:template name="CI.pagedefault.footer">
	<style:footer>
		<text:p text:style-name="CI.para-legal">This document... blah blah blah...</text:p>
	</style:footer>
</xsl:template>



<xsl:template name="CI.pagenext.header">
	<xsl:call-template name="CI.pagedefault.header"/>
</xsl:template>


<xsl:template name="CI.pagenext.footer">
	<style:footer>
		<table:table
			table:name="tablefooter"
			table:style-name="tablefooter">
			<table:table-column
				table:style-name="tablefooter.A" 
				table:number-columns-repeated="2"/>
			<table:table-row>
				<table:table-cell office:value-type="string">
					<text:p text:style-name="CI.footer-start">Copyright © OASIS Open 2002 - 2005. All Rights Reserved.</text:p>
					<text:p text:style-name="CI.footer-start">
						<xsl:if test="/article">
							<xsl:value-of select="/article/title"/>
						</xsl:if>
					</text:p>
				</table:table-cell>
				<table:table-cell office:value-type="string">
					<text:p text:style-name="CI.footer-end">YYYY-MM-DD</text:p>
					<text:p text:style-name="CI.footer-end">
						Page <text:page-number text:select-page="current"/> of <text:page-count/>
					</text:p>
				</table:table-cell>
			</table:table-row>
		</table:table>
	</style:footer>
<!--
	<style:footer>
		<text:p>Page <text:page-number text:select-page="current"/> of <text:page-count/></text:p>
	</style:footer>
-->
</xsl:template>






<xsl:template name="CI.document-content.automatic-styles">
	<xsl:choose>
		<xsl:when test="/article">
			<xsl:element name="style:style">
				<xsl:attribute name="style:name">CI.logo</xsl:attribute>
				<xsl:attribute name="style:family">graphic</xsl:attribute>
				<xsl:attribute name="style:parent-style-name">Graphics</xsl:attribute>
				<xsl:element name="style:graphic-properties">
					<xsl:attribute name="style:wrap">none</xsl:attribute>
					<xsl:attribute name="style:number-wrapped-paragraphs">no-limit</xsl:attribute>
					<xsl:attribute name="style:vertical-pos">from-top</xsl:attribute>
					<xsl:attribute name="style:vertical-rel">paragraph</xsl:attribute>
					<xsl:attribute name="style:horizontal-pos">left</xsl:attribute>
					<xsl:attribute name="style:horizontal-rel">paragraph</xsl:attribute>
					<xsl:attribute name="fo:background-color">transparent</xsl:attribute>
					<xsl:attribute name="style:background-transparency">100%</xsl:attribute>
					<xsl:attribute name="style:shadow">none</xsl:attribute>
					<xsl:attribute name="style:mirror">none</xsl:attribute>
					<xsl:attribute name="fo:clip">rect(0cm 0cm 0cm 0cm)</xsl:attribute>
					<xsl:attribute name="draw:luminance">0%</xsl:attribute>
					<xsl:attribute name="draw:contrast">0%</xsl:attribute>
					<xsl:attribute name="draw:red">0%</xsl:attribute>
					<xsl:attribute name="draw:green">0%</xsl:attribute>
					<xsl:attribute name="draw:blue">0%</xsl:attribute>
					<xsl:attribute name="draw:gamma">100%</xsl:attribute>
					<xsl:attribute name="draw:color-inversion">false</xsl:attribute>
					<xsl:attribute name="draw:image-opacity">100%</xsl:attribute>
					<xsl:attribute name="draw:color-mode">standard</xsl:attribute>
					<xsl:element name="style:background-image"/>
				</xsl:element>
			</xsl:element>
		</xsl:when>
		<xsl:when test="/slides">
			<xsl:element name="style:style">
				<xsl:attribute name="style:name">CI.logo</xsl:attribute>
				<xsl:attribute name="style:family">presentation</xsl:attribute>
				<xsl:element name="style:graphic-properties"/>
			</xsl:element>
		</xsl:when>
	</xsl:choose>
</xsl:template>




<xsl:template name="CI.office-text">

	<!--LOGO-->
	<xsl:element name="draw:frame">
		<xsl:attribute name="draw:style-name">CI.logo</xsl:attribute>
		<xsl:attribute name="draw:name">logo</xsl:attribute>
		<xsl:attribute name="text:anchor-type">char</xsl:attribute>
		<xsl:attribute name="svg:x">0cm</xsl:attribute>
		<xsl:attribute name="svg:y">0cm</xsl:attribute>
		<xsl:attribute name="svg:width">7.51cm</xsl:attribute>
		<xsl:attribute name="svg:height">1.96cm</xsl:attribute>
		<xsl:attribute name="draw:z-index">1</xsl:attribute>
		<xsl:element name="draw:image">
			<xsl:attribute name="xlink:href">/usr/share/docbook2odf/xsl/oasis-logo.gif</xsl:attribute>
			<xsl:attribute name="xlink:type">simple</xsl:attribute>
			<xsl:attribute name="xlink:type">embed</xsl:attribute>
			<xsl:attribute name="xlink:actuate">onLoad</xsl:attribute>
		</xsl:element>
	</xsl:element>
	
</xsl:template>

	
	
<xsl:template name="CI.presentation.titlepage">

	<xsl:element name="draw:frame">
		<xsl:attribute name="presentation:style-name">CI.logo</xsl:attribute>
		<xsl:attribute name="draw:layer">backgroundobjects</xsl:attribute>
		<xsl:attribute name="draw:name">logo</xsl:attribute>
		<xsl:attribute name="svg:x">21cm</xsl:attribute>
		<xsl:attribute name="svg:y">0.5cm</xsl:attribute>
		<xsl:attribute name="svg:width">7.51cm</xsl:attribute>
		<xsl:attribute name="svg:height">1.96cm</xsl:attribute>
		<xsl:element name="draw:image">
			<xsl:attribute name="xlink:href">/usr/share/docbook2odf/xsl/oasis-logo.gif</xsl:attribute>
			<xsl:attribute name="xlink:type">simple</xsl:attribute>
			<xsl:attribute name="xlink:type">embed</xsl:attribute>
			<xsl:attribute name="xlink:actuate">onLoad</xsl:attribute>
		</xsl:element>
	</xsl:element>
	
</xsl:template>


<xsl:template name="CI.presentation.titlegroup">
	<xsl:call-template name="CI.presentation.titlepage"/>
</xsl:template>


<xsl:template name="CI.presentation.foil">
	<xsl:call-template name="CI.presentation.titlepage"/>
</xsl:template>

</xsl:stylesheet>

















