define(function(require, exports, module) {
	var $ = jQuery = require('jquery');
	require('epl/include/cookie');
	require('edturl/markdown/dist/to-markdown');
	function editor(d, name, type, x, y) {
		var p = d.parents(".ftype_ckeditor");
		/*加载状态*/
		if (p.prev("dt").length < 1) {
			p.css({
				'padding': '0px',
				'margin': '0px'
			});
			d.parent(".fbox").css("padding", "0px 5px");
		} else {
			x = x ? x : '98%';
		}
		p.find('.fbox').css('margin', '0px');
		var kk = d.text();
		var tt = toMarkdown(kk, {
			gfm: true
		});
		d.text(tt);
		var names = name + 's';
		d.parent('.fbox').attr("id", names);
		/*配置编辑器*/
		var deps = [
			siteurl+'app/app/editorswith/editormd/plugins/link-dialog/link-dialog',
			siteurl+'app/app/editorswith/editormd/editormd',
			siteurl+'app/app/editorswith/editormd/css/editormd.min.css',
		];
		if(langset!='cn') deps.push(siteurl+'app/app/editorswith/editormd/languages/'+langset);
		seajs.use(deps, function($, editormd) {
			window['testEditor' + names] = editormd(names, {
				height: 500,
				htmlDecode: true,
				saveHTMLToTextarea: true,
				path: siteurl+"app/app/editorswith/editormd/lib/",
				imageUpload: true,
				imageUploadURL: adminurl + 'n=editormd&c=upload&a=doeditor',
			});
			d.parent('.fbox').find('[name=' + names + ']').attr({
				name: name
			});
		});
	}
	exports.func = function(d) {
		d = d.find('.ftype_ckeditor .fbox textarea');
		var d_fun = function(dom) {
			var n = dom.attr('name'),
				t = dom.attr('data-ckeditor-type'),
				x = dom.attr('data-ckeditor-x'),
				y = dom.attr('data-ckeditor-y');
			editor(dom, n, t, x, y);
		};
		d.each(function() {
			var $this_parents = $(this).parents('.tab-pane');
			if ($this_parents.length) {
				var $this = $(this),
					id = $this_parents.attr('id');
				if ($this_parents.hasClass('active')) {
					d_fun($this);
				} else {
					$('.nav-tabs>li>a[href=#' + id + ']').one('click', function() {
						d_fun($this);
					})
				}

			} else {
				d_fun($(this));
			}
		})
	}
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
});