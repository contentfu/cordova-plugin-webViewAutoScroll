       var exec = require('cordova/exec');
       module.exports = {
       enable : function() {
               exec(null, null, "WebViewAutoScroll", "enable", []);
       },
       disable:function() {
               exec(null, null, "WebViewAutoScroll", "disable", []);
       },
       invalidate:function() {
       exec(null, null, "WebViewAutoScroll", "invalidate", []);
       },
   };
