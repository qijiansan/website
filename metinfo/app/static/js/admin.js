/**
 * 后台功能
 */
(function(){
M.is_admin=$('html').hasClass('met-admin');
M.noside=getQueryString('noside');
// 加载模板
$.metLoadTemp=function(path,data,fn){
    if(!path) return false;
    var prefix=file_path='',
        is_app=0,
        data=data||{},
        data_url='';
    if(path.substr(0,1)=='#'){
        prefix=path.substr(1,path.indexOf('/'));
        path=path.substr(path.indexOf('/')+1);
    }
    if(path.indexOf('?')>0){
        data_url=path.substr(path.indexOf('?')+1);
        path=path.substr(0,path.indexOf('?')-1);
    }
    if(data_url!=''){
        $.each(data_url.split('&'), function(index, val) {
            if(val){
                var value=val.split('=');
                if(value[1]&&value[1]!='') data[value[0]]=value[1];
            }
        });
    }
    var paths=path.indexOf('/')?path.split('/'):[path];
    if(paths[0]=='app'){
        paths.splice(0,1);
        is_app=1;
    }
    // metui.use('routers',function(){
        if(!ROUTERS[paths[0]]) ROUTERS[paths[0]]={};
        if(!ROUTERS[paths[0]].module) ROUTERS[paths[0]].module=paths[0];
        if(!ROUTERS[paths[0]].path) ROUTERS[paths[0]].path='index';
        if(paths[1]=='index') paths.splice(1);
        if(paths[1]){
            if(!ROUTERS[paths[0]].sub) ROUTERS[paths[0]].sub={};
            if(!ROUTERS[paths[0]].sub[paths[1]]) ROUTERS[paths[0]].sub[paths[1]]={};
            if(!ROUTERS[paths[0]].sub[paths[1]].path) ROUTERS[paths[0]].sub[paths[1]].path=paths.slice(1).join('/');
        }
        var routers_data=paths[1]?ROUTERS[paths[0]].sub[paths[1]].data:ROUTERS[paths[0]].data;
        routers_data && $.extend(data, routers_data);
        if(prefix){
            file_path=prefix+path;
        }else{
            prefix=(is_app?'apps':'sys')+'/';
            file_path=prefix+ROUTERS[paths[0]].module+'/admin/templates/'+(paths[1]?ROUTERS[paths[0]].sub[paths[1]].path:ROUTERS[paths[0]].path);
            if(prefix=='apps/') prefix='app/';
        }
        $.ajax({
            url: M.url.admin+'?m=include&c=loadtemp&a=doviewhtml',
            type: 'POST',
            dataType: 'json',
            data: {path:file_path,data:data},
            success:function(result){
                metAjaxFun({
                    result:result,
                    true_fun:function(){
                        typeof fn==='function'?fn(result,prefix,paths,file_path,data):''
                    }
                });
            }
        });
    // });
}
// 通过锚点加载模板
function metLoadModule(){
    if(!checkLogin()) return;
    var hash_start=location.hash;
    hash_start=hash_start.length>2&&hash_start.substr(0,2)=='#/'?hash_start.substr(2):'';
    if(hash_start==''){
        return false;
    }else{
        var path=hash_start;
        if(hash_start.indexOf('/?')>0) hash_start=hash_start.substr(0,hash_start.indexOf('/?'));
    }
    var hash=hashHandle(hash_start);
    hash_start=hash_start.substr(0,4)=='app/'?'app/'+hash:hash;
    var $navtabs_active=$('.metadmin-sidebar-nav a[href="#/'+hash_start+'"]'),
        $this_content=$('.metadmin-content[data-page="'+hash_start+'"]'),
        $loader=$('.metadmin-loader'),
        loadFun=function(this_content){// 切换页面后回调
            var $content=this_content||$this_content;
            $loader.stop().fadeOut(100,function(){
                $content.fadeIn(100);
            });
            if(M.noside){
                var title=($content.find('.met-headtab:eq(0) a.active').text()||$content.find('>input[type="hidden"][name="page_title"]').val())+'-';
            }else{
                var title=($navtabs_active.attr('title')?$navtabs_active.attr('title')+'-':(hash=='home'?METLANG.background_page+'-':'')),
                    breadcrumb='<li class="breadcrumb-item"><a href="#/'+hash_start+'">'+($navtabs_active.attr('title')||METLANG.background_page)+'</a></li>';
                if($navtabs_active.parents('.sub').length || $navtabs_active.data('parent-title')){
                    var parent_title=$navtabs_active.data('parent-title')||$navtabs_active.parents('.sub').prev('a').attr('title');
                    breadcrumb='<li class="breadcrumb-item">'+parent_title+'</li>'+breadcrumb;
                    title+=parent_title+'-';
                }
            }
            $('title').html(title+$('title').data('title'));
            if(M.noside){
                $('.metadmin-breadcrumb .breadcrumb-item:gt(0)').remove();
                $('.metadmin-breadcrumb .breadcrumb-item:first-child').after(breadcrumb);
            }
            if(hash_start!='manage') $content.find('.met-headtab[data-ajaxchange]:eq(0) a:eq('+(getQueryString('head_tab_active')||0)+')').click();
        };
    $('.metadmin-sidebar-nav li').removeClass('active');
    $navtabs_active.parents('li').addClass('active');
    // 获取页面加载参数
    $('.metadmin-content').hide();
    $loader.stop().fadeIn(100);
    if($this_content.length && $this_content.attr('data-loaded')){// 老页面切换
        setTimeout(function(){
            loadFun();
            loadedTempReload(hash_start);
        },200);
    }else{// 新页面加载
        // 获取页面模板数据
        $.metLoadTemp(path,'',function(result,prefix,paths,file_path,data){
            // 新页面加载完后回调
            $('.metadmin-main').append('<div class="metadmin-content card p-4 border-none metadmin-shadow position-static" data-page="'+hash_start+'" data-loaded="1" style="display: none;"></div>');
            var $this_content=$('.metadmin-content[data-page="'+hash_start+'"]');
            $this_content[0].innerHTML=result.html;
            loadFun($this_content);
            adminModuleInfo($this_content,prefix,hash_start,paths,file_path,data);
            typeof TEMPLOADFUNS[hash_start]=='function'&&TEMPLOADFUNS[hash_start]();
        });
    }
}
window.TEMPLOADFUNS=[];
checkLogin();
// 后台锚点加载初始化
if(M.is_admin){
    // 历史记录切换
    M.useragent_tlc.indexOf('rv:11.0')>0?window.onhashchange=function(){
        metLoadModule();
    }:window.addEventListener("popstate", function() {
        metLoadModule();
    });
    if(location.hash.length<2){
        location.hash='/home';
    }else{
        metLoadModule();
    }
}
$(function(){
    // 页面元素点击登录状态判断
    $(document).on('click', 'a,button,input', function(event) {
        $('html.met-admin,html.met-pageset').length && !$(this).parents('.alertify').length && !$(this).hasClass('dropdown-toggle') && (checkLogin()||event.preventDefault());
    });
    // 登录页面
    if($('.met-login-form').length){
        metui.use(['form','app_form'],function(){
            setTimeout(function(){
                formSaveCallback($('.met-login-form').attr('data-validate_order'),{
                    true_fun:function(result){
                        setTimeout(function(){
                            location.href=M.url.admin+'?lang='+result.data.admin_lang+'&n=ui_set';
                        },1000);
                    }
                })
            },0);
        });
    }
    // 找回密码页面
    if($('.met-getpassword-form[data-submit-ajax]').length){
        metui.use(['form','app_form'],function(){
            setTimeout(function(){
                formSaveCallback($('.met-getpassword-form').attr('data-validate_order'),{
                    true_fun:function(result){
                        result.url && setTimeout(function(){
                            location.href=result.url;
                        },1500);
                    }
                })
            },0);
        });
    }
    // 切换语言站点
    $('.metadmin-head-langlist a[data-val]').click(function(event) {
        setCookie('admin_lang',$(this).data('val'));
        location.href=M.url.admin;
    });
    // 功能大全跳转
    $(document).on('click', '.function-ency-list .list-group-item a[href*="/#/"]', function(event) {
        if(M.is_admin){
            event.preventDefault();
            $('.function-ency-modal').modal('hide');
            var module=$(this).attr('href').split('/')[1];
            if(module!='manage' && $('.metadmin-content[data-page="'+module+'"] .met-headtab[data-ajaxchange]').length){
                var head_tab_active=getQueryString('head_tab_active',$(this).attr('href'))||0;
                $('.metadmin-content[data-page="'+module+'"] .met-headtab a:eq('+head_tab_active+')').click();
            }else{
                location.href=$(this).attr('href');
            }
        }
    });
    // tab页面ajax切换
    $(document).on('click', '.met-headtab[data-ajaxchange] a[href^="#"]', function(event) {
        if(M.is_admin) replaceParamVal('head_tab_active',$(this).index());
        var $headtab_content=$($(this).attr('href')),
            title=$(this).text(),
            url=$(this).data('url'),
            hash=url.indexOf('/?')>0?url.split('/?')[0]:url;
        hash=hashHandle(hash);
        if($(this).attr('data-reload')||$(this).parent().attr('data-reload')) $headtab_content.removeAttr('data-loaded');
        if($headtab_content.attr('data-loaded')){
            loadedTempReload(hash,$headtab_content);
        }else{
            metLoadTemp(url,'',$headtab_content,function(html){
                $headtab_content[0].innerHTML=html;
            },function(obj,data){
                typeof TEMPLOADFUNS[hash]=='function'&&TEMPLOADFUNS[hash]();
                $headtab_content.attr({'data-loaded':1});
            });
        }
        // 动画切换
        var $tab_content=$headtab_content.parents('.tab-content:eq(0)');
        $tab_content.css({'min-height':Math.max.call(null,300,$tab_content.height())});
        $tab_content.find('.tab-pane').addClass('hide');
        if(!$tab_content.find('>.headtab-content-loader').length) $tab_content.append(M.component.loader({
            class_name: 'w-100 bg-white position-absolute headtab-content-loader',
            wrapper_class:'d-flex align-items-center justify-content-center h-100',
            style:'left:0;top:0;z-index:100;',
            height:'300px'
        }));
        $tab_content.addClass('position-relative').find('>.headtab-content-loader').removeClass('hide');
        setTimeout(function(){
            $tab_content.removeClass('position-relative').find('>.headtab-content-loader').addClass('hide');
            $headtab_content.removeClass('hide');
            $tab_content.css({'min-height':''});
            M.is_admin && M.noside && $('title').html(title+'-'+$('title').data('title'));
        },300);
    });
    // 列表加载
    M.component.datatablePlay=function(info,table_order,option){
        metui.use(['table','datatables'],function(){
            var $table=info.obj.find('.dataTable'),
                table_order=table_order||$table.data('datatable_order')||('#'+$table.attr('id'));
            if(table_order=='#') table_order='met-datatable-'+new Date().getTime();
            $table.attr({'data-datatable_order':table_order,'data-table-ajaxurl':$table.data('ajaxurl')});
            // datatable表格返回数据的处理
            typeof option=='function'&&(datatable_option[table_order]=option(info,table_order));
            setTimeout(function(){
                info.obj.metDataTable();
            },50);
        });
    }
    // 通用ajax列表
    M.component.commonList=function(option){
        var thats=$.extend(true,{}, admin_module),
            table_order=thats.obj.find('[data-datatable_order]').data('datatable_order');
        M.component.datatablePlay(thats,table_order,option);
        TEMPLOADFUNS[thats.hash]=function(){
            var thats_new=$.extend(true,{}, admin_module),
                table_order_new=thats_new.obj.find('[data-datatable_order]').data('datatable_order'),
                datatableReload=function(){
                    if(thats_new.obj.attr('data-loaded')||''){
                        thats_new.obj.tabelsearchReset();
                        setTimeout(function(){datatable[table_order_new].ajax.reload()},0);
                    }else{
                        M.component.datatablePlay(thats_new,table_order_new,option);
                    }
                };
            if(thats_new.obj.selector==thats.obj.selector){
                // console.log(1);
                datatableReload();
            }else{
                if(typeof datatable[table_order_new]!='undefined'){
                    // console.log(3);
                    datatableReload();
                }else{
                    // console.log(2);
                    M.component.datatablePlay(thats_new,table_order_new,option);
                }
            }
        };
    };
    // 头部导航栏清空缓存、清除缩略图
    $(document).on('click','.clear-cache',function(event) {
        event.preventDefault();
        metAlert(($(this).attr('title')||$(this).text())+'...',0,1);
        metui.ajax({
            url: $(this).attr('href')
        },function(result){
            metAjaxFun({result:result,true_fun:function(){
                metAlert(' ',0);
                setTimeout(function(){
                    window.location.reload();
                },500);
            }});
        });
    });
    // 传统后台侧栏列表展开/收起
    $('.btn-adminsidebar-control').click(function(event) {
        var is_retract=$('i',this).hasClass('wb-arrow-left'),
            delay=is_retract?0:300;
        $('i',this).removeClass(is_retract?'wb-arrow-left':'wb-menu').addClass(is_retract?'wb-menu':'wb-arrow-left');
        $('.metadmin-sidebar').toggleClass('min');
        setTimeout(function(){
            $('.metadmin-sidebar').toggleClass('retract');
        },delay);
    });
});
})();
// 判断后台登录状态
function checkLogin(){
    var status=true;
    if($('.met-check-login').length){
        status=false;
    }else{
        if(!getCookie('met_auth')){
            if($('html.met-admin,html.met-pageset').length){
                metui.use('alertify', function() {
                    alertify.confirm('<span class="text-danger met-check-login">'+(METLANG.jsx32||'登录超时，请重新登录！')+'</span>', function (ev) {
                        location.href=M.url.admin;
                    });
                });
            }else{
                var hash=location.hash.substr(2);
                hash=hash.indexOf('/')>0?hash.split('/'):[hash];
                if(hash[0] && hash[0]!='login') location.href=M.url.admin;
            }
            status=false;
        }
    }
    return status;
}
// hash处理
function hashHandle(hash){
    if(hash.indexOf('/')>0){
        var hashs=hash.split('/');
        if(hashs[0]=='app'){
            delete hashs[0];
            hashs=$.grep(hashs, function(n) {return $.trim(n).length > 0;});
            hash=hashs.join('/');
        }
        if(hashs[1]=='index'||hashs[1]=='') hash=hashs[0];
    }
    return hash;
}
// 模板加载回调-模块信息定义、回调函数、加载模块css/js
function adminModuleInfo(obj,prefix,hash,paths,file_path,data,fn){
    var own_tem='#'+prefix+ROUTERS[paths[0]].module+'/admin/templates/',
        css_path=paths[1]?ROUTERS[paths[0]].sub[paths[1]].css:ROUTERS[paths[0]].css,
        js_path=paths[1]?ROUTERS[paths[0]].sub[paths[1]].js:ROUTERS[paths[0]].js;
    if(prefix=='app/'){
        var app_file_status=obj.find('>input[name="app_file_status"]').val().split('|');
        css_path=parseInt(app_file_status[0])?paths[0]:'';
        js_path=parseInt(app_file_status[1])?paths[0]:'';
    }
    js_path&&(js_path=js_path.substr(0,1)=='#'?js_path:own_tem+'js/'+js_path);
    css_path&&(css_path=css_path.substr(0,1)=='#'?css_path:own_tem+'css/'+css_path);
    window.admin_module={};
    admin_module.obj=obj;
    admin_module.hash=hash;
    admin_module.own=M.url.system+ROUTERS[paths[0]].module+'/admin/';
    admin_module.own_tem=admin_module.own+'templates/';
    admin_module.own_name=M.url.admin+'?n='+ROUTERS[paths[0]].module+'&';
    admin_module.file_path=file_path;
    admin_module.data=data;
    admin_module.module=ROUTERS[paths[0]].module;
    admin_module.reload=function(){
        if(this.obj.hasClass('tab-pane')){
            this.obj.parents('.tab-content').eq(0).parent().find('.met-headtab[data-ajaxchange]:eq(0) a.active').click();
        }else if(this.obj.find('.met-headtab:not([data-ajaxchange])').length && this.hash!='manage'){
            var $headtab_a=this.obj.find('.met-headtab:not([data-ajaxchange]):eq(0) a.active');
            M.is_admin?(location.href=location.href):$headtab_a.click();
        }else{
            if(M.is_admin){
                !this.obj.parents('.modal').length && (location.href=location.href);
            }else{
                if(this.obj.parents('.pageset-nav-modal').length){
                    if(this.obj.hasClass('content-show-item')){
                        $('.pageset-head-nav [data-url="manage"]').attr({
                            'data-module':this.data.module,
                            'data-class1':this.data.class1,
                            'data-class2':this.data.class2,
                            'data-class3':this.data.class3
                        }).trigger('clicks');
                    }else $('.btn-pageset-common-page').attr({'data-url':this.hash}).trigger('clicks');
                }
            }
        }
        this.obj.parents('.met-scrollbar').eq(0).scrollTop(0);
    };
    typeof admin_module_arr =='undefined'&&(window.admin_module_arr={});
    admin_module_arr[hash]=$.extend(true,{},admin_module);
    typeof fn==='function'&&fn();
    typeof data.nocommon=='undefined'&&obj.metCommon();
    js_path&&metui.use(js_path);
    css_path&&metui.link(css_path);
}
// 加载任意模板回调
function metLoadTemp(path,data,obj,fn1,fn2){
    if(!checkLogin()) return;
    // 加载模板
    $.metLoadTemp(path,data,function(result,prefix,paths,file_path,datas){
        typeof fn1==='function'&&fn1(result.html);
        obj=$(obj.selector);
        adminModuleInfo(obj,prefix,obj.attr('data-path')||paths.join('/'),paths,file_path,datas,function(){
            typeof fn2==='function'&&fn2(obj,datas);
        });
    });
}
// 已加载页面重新切换后处理
function loadedTempReload(hash,obj,fn){
    admin_module=admin_module_arr[hash];
    if(obj) admin_module.obj=obj;
    typeof fn=='function'&&fn();
    typeof TEMPLOADFUNS[hash]=='function'&&TEMPLOADFUNS[hash]();
}