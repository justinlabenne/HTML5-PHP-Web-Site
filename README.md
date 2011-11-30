HTML5 PHP Web Site
========

## Licenses:
* Modernizr: MIT/BSD license - http://www.modernizr.com/
* jQuery: MIT/GPL license - http://jquery.com/
* H5BP: The Unlicense - https://github.com/paulirish/html5-boilerplate
* normalize css: Public Domain - https://github.com/necolas/normalize.css
* 960 Grid System: MIT/GPL license - http://960.gs/

## Everything else:
* [The Unlicense](http://unlicense.org) (aka: public domain) 


## Summary:
* PHP Template and H5BP ripoff using JQuery, Modernizr, normalize.css and 960 grid system
* The "oldie" conditional <html> class to style for IE8 and lower. http://bit.ly/jKmkHM 


## Adjustments and Descriptions:
#### build (directory)
* Generic build script for Windows (build.cmd)
* Removes any previous incarnations of the publish directory
* Generates a filename based on date/time %FILENAME%
* Copies files to a temp dir, then to a local publish dir (XCOPY limitation)
* Optimizes jpg/png images using optipng and jpegtran
* Minfies the style.css file and creates a new filename style.%FILENAME%.css
* Updates include\header.php file with a reference to the minified stylesheet

#### css (directory)
* style.css: normalize.css, 960 grid, h5bp styles.

#### images (directory)
* Where you put images.

#### includes (directory)
* closer.php: The last gasp of scripts for the page (inline copyright, analytics, IE6 Chrome frame prompt)
* footer.php: Closing markup for the page and JQuery (if you need on every page)
* header.php: meta tags to fill out site wide, plus some php vars allowing for per page adjustment. The starting markup of the site.

#### js (directory)
* jquery-1.7.1.min.js: latest minified version.
* modernizr-2.0.6.min.js: latest minified version using a custom build.

#### .htaccess: 
* https://github.com/paulirish/html5-boilerplate/blob/master/.htaccess

#### 404.html
* 404 ErrorDocument defined in .htaccess file
* https://github.com/paulirish/html5-boilerplate/blob/master/404.html

#### apple-touch-icon.png: 
* change this out with your own image or add others images according to Apples specs or mathias recommendations.
* http://developer.apple.com/library/safari/#documentation/appleapplications/reference/safariwebcontent/configuringwebapplications/configuringwebapplications.html
* http://mathiasbynens.be/notes/touch-icons#sizes

#### crossdomain.xml
* http://www.adobe.com/devnet/articles/crossdomain_policy_file_spec.html

#### favicon.ico: 
* Self explanatory.

#### humans.txt: 
* Adjust "team" and other aspects you wish to include OR remove it if you don't believe it to be the cats ass.
* http://humanstxt.org/

#### index.php: 
* Example starter page outlining where page markup goes, scripts should go, and php vars to adjust per page.

#### robots.txt: 
* Adjust as necessary: http://www.robotstxt.org/

#### sitemap.xml: 
* http://www.sitemaps.org/


## Changelog:
### v0.2 - 11/29/2011
* Updated JQuery version to 1.7.1
* Tweaks and things

### v0.1 - 09/04/2011 - Initial Release



## Credits:
* favicon/apple-touch-icon: IconEden | HomePage: http://www.iconeden.com
* Lots of people