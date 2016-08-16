


        
        


<!DOCTYPE html>
<html lang="en">
    <head>

<meta charset="utf-8" />
<!-- Google Chrome Frame open source plug-in brings Google Chrome's open web technologies and speedy JavaScript engine to Internet Explorer-->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>VIVO</title>



<!-- vitro base styles (application-wide) -->
<link rel="stylesheet" href="/vivo/css/vitro.css" />

<link rel="stylesheet" href="/vivo/css/login.css" />

<link rel="stylesheet" href="/vivo/css/edit.css" /><link rel="stylesheet" href="/vivo/themes/wilma/css/screen.css" />

<script>
var i18nStrings = {
    allCapitalized: 'All',
};
</script>
<script type="text/javascript" src="/vivo/js/jquery.js"></script>
<script type="text/javascript" src="/vivo/js/vitroUtils.js"></script>

<!--[if lt IE 9]>
<script type="text/javascript" src="/vivo/js/html5.js"></script>
<![endif]-->

<script type="text/javascript" src="/vivo/js/login/loginUtils.js"></script> 

<!--[if (gte IE 6)&(lte IE 8)]>
<script type="text/javascript" src="/vivo/js/selectivizr.js"></script>
<![endif]-->



<link rel="shortcut icon" type="image/x-icon" href="/vivo/favicon.ico">        <script type="text/javascript" src="/vivo/js/homePageUtils.js?version=x"></script>
    </head>
    
    <body class="home" onload="">
        <script>var facultyMemberCount = 0;</script>

<header id="branding" role="banner">

    <h1 class="vivo-logo"><a title="VIVO | connect share discover" href="/vivo"><span class="displace">VIVO</span></a></h1>

    <nav role="navigation">
        <ul id="header-nav" role="list">

<script type="text/javascript">
var i18nStringsLangMenu = {
    selectLanguage: "Select a language"
};
</script>


            <li role="listitem"><a href="/vivo/browse" title="Index">Index</a></li>
                <li role="listitem"><a class="log-out" title="Log in to manage this site" href="/vivo/authenticate?return=true">Log in</a></li>
        </ul>
        
    </nav>

</header>


<div id="developerPanel" > </div>
<script>
    developerAjaxUrl = '/vivo/admin/developerAjax'
    developerCssLinks = ["/vivo/css/developer/developerPanel.css", "/vivo/js/jquery-ui/css/smoothness/jquery-ui-1.8.9.custom.css"]
</script>
   
   

<nav role="navigation">
    <ul id="main-nav" role="list">
            <li role="listitem"><a href="/vivo/" title="Home menu item"  class="selected" >Home</a></li>
            <li role="listitem"><a href="/vivo/people" title="People menu item" >People</a></li>
            <li role="listitem"><a href="/vivo/organizations" title="Organizations menu item" >Organizations</a></li>
            <li role="listitem"><a href="/vivo/research" title="Research menu item" >Research</a></li>
            <li role="listitem"><a href="/vivo/events" title="Events menu item" >Events</a></li>
    </ul>
</nav>

<div id="wrapper-content" role="main">        
    
    <!--[if lte IE 8]>
    <noscript>
        <p class="ie-alert">This site uses HTML elements that are not recognized by Internet Explorer 8 and below in the absence of JavaScript. As a result, the site will not be rendered appropriately. To correct this, please either enable JavaScript, upgrade to Internet Explorer 9, or use another browser. Here are the <a href="http://www.enable-javascript.com"  title="java script instructions">instructions for enabling JavaScript in your web browser</a>.</p>
    </noscript>
    <![endif]-->
        <section id="intro" role="region">
            <h2>Welcome to VIVO</h2>

            <p>VIVO is a research-focused discovery tool that enables collaboration among scientists across all disciplines.</p>
            <p>Browse or search information on people, departments, courses, grants, and publications.</p>

            <section id="search-home" role="region">
                <h3>Search VIVO <span class="search-filter-selected">filteredSearch</span></h3>
                <h3><iframe src="http://www.yahoo.com">source</iframe></h3>
                <fieldset>
                    <legend>Search form</legend>
                    <form id="search-homepage" action="/vivo/search" name="search-home" role="search" method="post" > 
                        <div id="search-home-field">
                            <input type="text" name="querytext" class="search-homepage" value="" autocapitalize="off" />
                            <input type="submit" value="Search" class="search" />
                            <input type="hidden" name="classgroup"  value="" autocapitalize="off" />
                        </div>
                
                        <a class="filter-search filter-default" href="#" title="Filter search">
                            <span class="displace">Filter search</span>
                        </a>
                
                        <ul id="filter-search-nav">
                            <li><a class="active" href="">All</a></li>
            <li role="listitem"><a href="" title="http://vivoweb.org/ontology#vitroClassGrouplocations">Locations</a></li>
                        </ul>
                    </form>
                </fieldset>
            </section> <!-- #search-home -->
        
        </section> <!-- #intro -->
        

    <section id="login" class="hidden">
        <h2>Log in</h2>
    
       
       
        <form role="form" id="login-form" action="/vivo/authenticate" method="post" name="login-form" />
            
            <div  >
            
                <label for="loginName">Email</label>
                <input id="loginName" name="loginName" class="text-field focus" type="text" value="" autocapitalize="off" required autofocus />

                <label for="loginPassword">Password</label>
                <input id="loginPassword" name="loginPassword" class="text-field" type="password" required />
          
                <p class="submit"><input name="loginForm" class="green button" type="submit" value="Log in"/></p>
          
            </div>
        </form>

    </section><!-- #log-in -->
        
        <!-- List of research classes: e.g., articles, books, collections, conference papers -->
<section id="home-research" class="home-sections">
    <h4>Research</h4>
    <ul>
            <p><li style="padding-left:1.2em">No research content found.</li></p> 
    </ul>
</section>
                
        <!-- List of four randomly selected faculty members -->
    <section id="home-faculty-mbrs" class="home-sections"  >
        <h4>Faculty</h4>
        <div id="tempSpacing">
            <span>Loading faculty . . .&nbsp;&nbsp;&nbsp;
                <img  src="/vivo/images/indicatorWhite.gif">
            </span>
        </div>
        <div id="research-faculty-mbrs">
            <!-- populated via an ajax call -->
            <ul id="facultyThumbs">
            </ul>
        </div>
    </section>

        <!-- List of randomly selected academic departments -->
    <section id="home-academic-depts" class="home-sections">
        <h4>Departments</h4>
        <div id="academic-depts">
        </div>
    </section>        

        
        <!-- Statistical information relating to property groups and their classes; displayed horizontally, not vertically-->

                    <section id="home-stats" class="home-sections" >
            <h4>Statistics</h4>
            <ul id="stats">
                            <li>
                                <a href="/vivo/browse">
                                    <p  class="stats-count">
                                            323<span>&nbsp;</span>
                                    </p>
                                    <p class="stats-type">Locations</p>
                                </a>
                            </li>
            </ul>
        </section>

            
	<iframe src="http://www.yahoo.com">source</iframe>

</div> <!-- #wrapper-content -->

<footer role="contentinfo">
    <p class="copyright">
            <small>&copy;2016
                VIVO Project
             | <a class="terms" href="/vivo/termsOfUse" title="Terms of Use">Terms of Use</a></small> | 
        Powered by <a class="powered-by-vivo" href="http://vivoweb.org" target="_blank" title="Powered by VIVO"><strong>VIVO</strong></a>
    </p>
    
    <nav role="navigation">
        <ul id="footer-nav" role="list">
            <li role="listitem"><a href="/vivo/about" title="About">About</a></li>
            <li role="listitem"><a href="http://www.vivoweb.org/support" target="blank" title="Support">Support</a></li>
        </ul>
    </nav>
</footer>


<script type="text/javascript" src="/vivo/js/languageMenuUtils.js"></script>
<script type="text/javascript" src="/vivo/js/developer/developerPanel.js"></script>
<script type="text/javascript" src="/vivo/js/jquery-ui/js/jquery-ui-1.8.9.custom.min.js"></script>


<script>
var academicDepartments = [
];
var urlsBase = "/vivo";
</script>
	<div id="images"></div>
    <script>       
        var i18nStrings = {
            researcherString: 'researcher',
            researchersString: 'researchers',
            currentlyNoResearchers: 'There are currently no researchers with a defined geographic focus.',
            countriesAndRegions: 'countries and regions.',
            countriesString: 'countries',
            regionsString: 'regions',
            statesString: 'states.',
            stateString: 'state.',
            statewideLocations: 'state-wide locations.',
            researchersInString: 'researchers in',
            inString: 'in',
            noFacultyFound: 'No faculty members found.',
            placeholderImage: 'placeholder image',
            viewAllFaculty: 'view all faculty',
            viewAllString: 'View all ...',
            viewAllDepartments: 'view all academic departments',
            noDepartmentsFound: 'No academic departments found.'
        };
        // set the 'limmit search' text and alignment
        if  ( $('input.search-homepage').css('text-align') == "right" ) {       
             $('input.search-homepage').attr("value","limit search \u2192");
        }
(function() {
  //var flickerAPI = "http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?";
  var flickerAPI = "https://staging-share.osf.io/api/search/abstractcreativework/_search?q=*&from=10";
  $.getJSON( flickerAPI, {
    //tags: "mount rainier",
    //tagmode: "any",
    'crossDomain': true,
    'contentType': 'application/json'
  })
    .done(function( json ) {
    let results = json.hits.hits.map((hit) => {
                $("<ul><li>" + JSON.stringify(hit) + " </li></ul>").appendTo("#images");
        //        document.write("here");
        //        let source = hit._source;
        //        source.id = hit._id;
        //        source.type = 'elastic-search-result';
        //        source.workType = source['@type'];
        //        source.contributors = source.contributors.map(contributor => {
        //            return {
        //                familyName: contributor.family_name,
        //                givenName: contributor.given_name,
        //                id: contributor['@id']
        //            };
        //       });
        //         $("<ul><li>" + hit + " </li></ul>").appendTo("#images");
        //        return source;
            });

      //$.each( json.items, function( i, item ) {
        //$("<ul><li>" + item + " </li></ul>").appendTo("#images");
     //   //$( "<img>" ).attr( "src", item.media.m ).appendTo( "#images" );
     //   if ( i === 3 ) {
     //     return false;
     //   }
      //});
    });
})();  
//	(function() {
  //var shareAPI = "https://staging-share.osf.io/api/search/abstractcreativework/_search?q=*&from=10";
  //$.getJSON( shareAPI, {
  //  'contentType': 'application/json'
  //}).done(function( json ) {
        //$.each( json.items, function( i, item ){
            //let results = json.hits.hits.map((hit) => {
                // HACK
        //        document.write("here");
        //        let source = hit._source;
        //        source.id = hit._id;
        //        source.type = 'elastic-search-result';
        //        source.workType = source['@type'];
        //        source.contributors = source.contributors.map(contributor => {
        //            return {
        //                familyName: contributor.family_name,
        //                givenName: contributor.given_name,
        //                id: contributor['@id']
        //            };
        //       });
        //        return source;
        //    });
        //    var items = [];
  //$.each( json, function( key, val ) {
    //$( "<img>" ).attr( "src", item.media.m ).appendTo( "#images" );
  //  items.push( "<li id='" + key + "'>" + val + "</li>" );
    
  //});
 
  //$( "<li>")
  //}).appendTo( "#images" );
	    //let queryData = JSON.stringify(results);
  //      });
    //.done(function( data ) {
      //$.each( data.items, function( i, item ) {
        //$( "<img>" ).attr( "src", "").appendTo( "#images" );
        //if ( i === 3 ) {
        //  return false;
        //}
      //});
    //});
//})();
    </script>
    </body>
</html>
