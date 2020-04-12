define(function(require, exports, module) {
    var $ = jQuery = require('jquery');
    require('epl/include/cookie');
    require('edturl/markdown/dist/to-markdown');
    require('pub/bootstrap/js/bootstrap.min');
    typeof M=='undefined' && (window.M={
        url:{
            admin:basepath
        },
        lang:lang
    });
    if(typeof checkLogin=='undefined'){
        window.checkLogin=function(){
            var met_auth=$.cookie('met_auth');
            !met_auth && alert(METLANG.jsx32);
            return met_auth;
        }
    }
    var editor = $('textarea.ckeditor');
    var kk = $('.v52fmbx_dlbox_content textarea').text();
    var tt = toMarkdown(kk, {
            gfm: true
        });
    $('.v52fmbx_dlbox_content textarea').text(tt);
    var deps = [
            siteurl+'app/app/editorswith/editormd/editormd',
            siteurl+'app/app/editorswith/editormd/css/editormd.min.css',
        ];
    if(langset!='cn') deps.push(siteurl+'app/app/editorswith/editormd/languages/'+langset);
    if (editor.length) {
        seajs.use(deps, function($, editormd) {
            editor.each(function() {
                var name = jQuery(this).attr('name');
                jQuery(this).parent().attr("id", name);
                var testEditor = editormd('content', {
                    height: 500,
                    htmlDecode: true,
                    saveHTMLToTextarea: true,
                    path: siteurl+"app/app/editorswith/editormd/lib/",
                    imageUpload: true
                });
            });
        });
    }
});