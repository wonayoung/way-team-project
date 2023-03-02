/*

NO JS REQUIRED!!!

... well, you could need JS for selecting first tab

... or include its hash in the URL



here ... simple JS to select 1.tab if there is nothing in the URL ... include it before </body> 
*/
(function() {
    if (!!location.hash) return;

    var link = document.querySelector('#tabs > .tab-link');
    if (link) link.click();
})();