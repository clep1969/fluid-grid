<!doctype html>

<cfparam name="cols" type="integer" default=12>
<cfif isDefined("form.cols")>
	<cfset cols = form.cols>
</cfif>

<cfswitch expression="cols">
	<cfcase value="12">
		<cfset styles = "_css/flexible-grid-12-columns.css">
		<cfset ieStyles = "_css/ie8-flex-12.css">
	</cfcase>
	<cfcase value="16">
		<cfset styles = "_css/flexible-grid.css">
		<cfset ieStyles = "_css/ie8-flex-16.css">
	</cfcase>
	<cfdefaultcase>
		<cfset styles = "_css/flexible-grid-12-columns.css">
		<cfset ieStyles = "_css/ie8-flex-12.css">
	</cfdefaultcase>
</cfswitch>

<html lang="en-us">

<head>
	<meta charset="utf-8" />
	<title>Testing the Responsive Grid</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="robots" content="noindex, nofollow" />
	<style>
		div.columns	{	background-color: #ddd;	}
		
		body::before{
			font-weight: bold;
			display: block;
			text-align: center;
			background: rgba(255,255,0, 0.9); /* Semi-transparent yellow */
			position: absolute;
			top: 0;
			left: 0;
			right: 0;
			z-index: 99;
		}

		@media only screen and (max-width: 240px)	{
			body::before{
				content: "Dumb Phone media query (< 240) fired";
			}
		}
		
		@media only screen and (min-width: 241px) and (max-width: 360px)	{
			body::before{
				content: "Smartphone media query (241 < 360) fired";
			}
		}
		
		@media only screen and (min-width: 361px) and (max-width: 480px)	{
			body::before{
				content: "Smartphone (Landscape) media query (361 < 480) fired";
			}
		}
		
		@media screen and (min-width: 481px) and (max-width: 640px)	{
			body::before{
				content: "Small Tablet media query (481 < 640) fired";
			}
		}

		@media only screen and (min-width: 641px) and (max-width: 768px)	{
			body::before{
				content: "Tablet media query (641 < 768) fired";
			}
		}
		
		@media only screen and (min-width: 769px)	{
			body::before{
				content: "Full-Size media query (> 768) fired";
			}
		}
	</style>
	<link rel="stylesheet" href="<cfoutput>#styles#</cfoutput>" type="text/css" media="all and (min-width: 14em)" />
	<!--[if (lt IE 9) & (!IEMobile)]>
	<link rel="stylesheet" href="<cfoutput>#ieStyles#</cfoutput>" media="all" />
	<![endif]-->
	<!--[if lt IE 9]>
	<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script>
	<script src="http://css3-mediaqueries-js.googlecode.com/files/css3-mediaqueries.js"></script>
	<![endif]-->
</head>

<body>
	<div id="header" class="banner" role="banner">
		<h1>Responsive Grid</h1>
		<p>This page serves to demonstrate a fluid, responsive grid system in 12- and 16-column flavors. Using media queries, the page reflows and serves screens from 240px wide to full-size desktop resolutions. IE 7 and 8 are served a separate stylesheet that preserves the fluid layout; positioning and media query support is helped along with use of IE9.js and css3-mediaqueries.js.</p>
		<p><strong>TODO:</strong> Test on Windows Phone mobile browser.</p>
	</div>
	<div class="row">
		<div class="one columns">1 Column</div>
		<div class="one columns">1 Column</div>
		<div class="one columns">1 Column</div>
		<div class="one columns">1 Column</div>
		<div class="one columns">1 Column</div>
		<div class="one columns">1 Column</div>
		<div class="one columns">1 Column</div>
		<div class="one columns">1 Column</div>
		<div class="one columns">1 Column</div>
		<div class="one columns">1 Column</div>
		<div class="one columns">1 Column</div>
<cfif cols EQ 16>
		<div class="one columns">1 Column</div>
		<div class="one columns">1 Column</div>
		<div class="one columns">1 Column</div>
		<div class="one columns">1 Column</div>
</cfif>
		<div class="one columns last">1 Column</div>
	</div>
	<div class="row">
		<div class="two columns">2 Columns</div>
		<div class="two columns">2 Columns</div>
		<div class="two columns">2 Columns</div>
		<div class="two columns">2 Columns</div>
		<div class="two columns">2 Columns</div>
<cfif cols EQ 16>
		<div class="two columns">2 Columns</div>
		<div class="two columns">2 Columns</div>
</cfif>
		<div class="two columns last">2 Columns</div>
	</div>
	<div class="row">
		<div class="three columns">3 Columns</div>
		<div class="three columns">3 Columns</div>
		<div class="three columns">3 Columns</div>
<cfif cols EQ 16>
		<div class="three columns">3 Columns</div>
		<div class="one columns">1 Columns</div>
</cfif>
		<div class="three columns last">3 Columns</div>
	</div>
	<div class="row">
		<div class="four columns">4 Columns</div>
		<div class="four columns">4 Columns</div>
<cfif cols EQ 16>
		<div class="four columns">4 Columns</div>
</cfif>
		<div class="four columns last">4 Columns</div>
	</div>
	<div class="row">
		<div class="five columns">5 Columns</div>
		<div class="five columns">5 Columns</div>
<cfif cols EQ 16>
		<div class="three columns">3 Columns</div>
		<div class="one columns">1 Columns</div>
</cfif>
		<div class="two columns last">2 Columns</div>
	</div>
	<div class="row">
		<div class="six columns">6 Columns</div>
<cfif cols EQ 16>
		<div class="four columns">4 Columns</div>
</cfif>
		<div class="six columns last">6 Columns</div>
	</div>
	<div class="row">
		<div class="seven columns">7 Columns</div>
<cfif cols EQ 16>
		<div class="four columns">4 Columns</div>
</cfif>
		<div class="five columns last">5 Columns</div>
	</div>
	<div class="row">
		<div class="eight columns">8 Columns</div>
<cfif cols EQ 16>
		<div class="four columns">4 Columns</div>
</cfif>
		<div class="four columns last">4 Columns</div>
	</div>
	<div class="row">
		<div class="nine columns">9 Columns</div>
<cfif cols EQ 16>
		<div class="two columns">2 Columns</div>
		<div class="two columns">2 Columns</div>
</cfif>
		<div class="three columns last">3 Columns</div>
	</div>
	<div class="row">
		<div class="ten columns">10 Columns</div>
<cfif cols EQ 16>
		<div class="two columns">2 Columns</div>
		<div class="two columns">2 Columns</div>
</cfif>
		<div class="two columns last">2 Columns</div>
	</div>
	<div class="row">
		<div class="eleven columns">11 Columns</div>
<cfif cols EQ 16>
		<div class="four columns">4 Columns</div>
</cfif>
		<div class="one columns last">1 Columns</div>
	</div>
	<div class="row">
		<div class="twelve columns">12 Columns</div>
<cfif cols EQ 16>
		<div class="four columns last">4 Columns</div>
</cfif>
	</div>
<cfif cols EQ 16>
	<div class="row">
		<div class="thirteen columns">13 Columns</div>
		<div class="three columns last">3 Columns</div>
	</div>
	<div class="row">
		<div class="fourteen columns">14 Columns</div>
		<div class="two columns last">2 Columns</div>
	</div>
	<div class="row">
		<div class="fifteen columns">15 Columns</div>
		<div class="one columns last">1 Columns</div>
	</div>
	<div class="row">
		<div class="sixteen columns">16 Columns</div>
	</div>
</cfif>
	<div style="clear: both;">
		<form name="switchCols" action="" method="post">
			<fieldset>
				<legend>Select Number of Columns</legend>
				<input type="radio" name="cols" id="cols" value="12" />&nbsp;12 Column Grid<br />
				<input type="radio" name="cols" id="cols" value="16" />&nbsp;16 Column Grid<br /><br />
				<input type="submit" name="submit" value="Go!" />&nbsp;&nbsp;<input type="reset" name="reset" value="Clear Form" />
			</fieldset>
		</form>
	</div>
</body>

</html>