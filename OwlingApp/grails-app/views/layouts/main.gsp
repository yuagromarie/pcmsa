<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="PCMA"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'pcma_logo.png')}" type="image/x-icon">
		
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:javascript src = "jquery-1.7.1.min.js" />
		<g:javascript src = "jquery.dropotron-1.0.js" />
		<g:javascript src = "jquery.slidertron-1.1.js" />
		<script type="text/javascript">
			$(function() {
				$('#menu > ul').dropotron({
				mode: 'fade',
				globalOffsetY: 11,
				offsetY: -15
			});
			
		});
		</script>
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
	
			<div class="main_container">
				<div id="header">
				<div id="logo"><a href="/pcsoftapp/"><img src="${resource(dir: 'images', file: 'logoo.gif')}" alt="" title="" border="0" width="474" height="125" /></a></div>
				<div id="menu">
            <ul>
			
				<li><a href="/pcsoftapp/" class="current" title="" ><img src="${resource(dir: 'images', file: 'home.png')}" alt="Home" width="41" height="37" id="home" /> Home</a></li>
				<li><a href="/pcsoftapp/home/" title=""><img src="${resource(dir: 'images', file: 'services.png')}" alt="Sitemap" width="37" height="37" id="sitemap" /> Consumer </a> 
				<ul>
					<li><a href="/pcsoftapp/home/">Monitoring Portal</a></li>
					<li><a href="/pcsoftapp/device">Devices</a></li>
					<li><a href="/pcsoftapp/complaint">Send Complaints</a></li>
                </ul>
				</li>
				<li><a href="/pcsoftapp/response" title=""><img src="${resource(dir: 'images', file: 'sexy.png')}" alt="Distributor" width="37" height="37" id="contact" /> Distributor </a>
				<ul>
					<li><a href="/pcsoftapp/response">Send Schedule</a></li>
					<li><a href="/pcsoftapp/feedback">View Feedbacks</a></li>
                </ul>
				</li>
				
            </ul>
			
        </div>
		   
         <div class="top_text">
        <p>"The best part is that I know my exact energy footprint pattern and can control it. I know what is waste vs. necessity. I have completely eliminated expensive and unnecessary consumption."</p>
        <a class="testimonial">-Chris Hunt, San Carlos CA-</a></p>
        </div>
		
		</div>
		</div>
		</div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
        <r:layoutResources />
		
		<g:layoutBody/>
		<center><div class="footer" role="contentinfo">&copy; 2013. Power Consumption Monitoring Application. All rights reserved. Design by Marjelyn Ebio.</div></center>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
