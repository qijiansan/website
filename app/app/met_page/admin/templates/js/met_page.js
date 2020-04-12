(function(){
    var that=$.extend(true,{}, admin_module),
        met_page_add_modal='.met_page-add-modal',
        met_page_list='#met_page-list';
    // 单页列表
    TEMPLOADFUNS['met_page/list']=function(){
        M.component.commonList(function(thats){
            return {
                ajax:{
                    dataSrc:function(result){
                        var data=[];
                        if(result.data){
                            $.each(result.data, function(index, val) {
                                val.status=parseInt(val.status);
                                var item=[
                                        val.page_code,
                                        val.skin_name,
                                        val.title,
                                        `<a href="${val.jump_url}" target="_blank">${val.jump_url}</a>`,
                                        val.exp_time_str,
                                        `<button class="btn btn-primary btn-sm btn-page-set" data-toggle="modal" data-target="${met_page_add_modal}" data-id="${val.id}" data-page_code="${val.page_code}" data-page_dir="${val.page_dir}">部署单页</button>`
                                    ];
                                data.push(item);
                            });
                        }
                        if(!data.length){
                           metui.use('alertify',function(){
                                alertify.confirm('你的账号名下没有可用单页，你可前往<a target="_blank" href="https://dy.mituo.cn/product/"><strong>米拓单页</strong></a>购买相关产品', function() {
                                    window.open('https://dy.mituo.cn/product/');
                                });
                           })
                        }
                        return data;
                    }
                }
            };
        });
    };
    // 部署弹框
    M.component.modal_options[met_page_add_modal]={
        modalTitle:'部署单页',
        modalType:'centered',
        modalRefresh:'one',
        modalBody:`<form action="${that.own_name}c=index&a=dosetPage" method="post" data-submit-ajax="1">
            <div class="metadmin-fmbx">
            <h3 class="example-title">同一域名下的同名目录只可绑定一个单页，若该目录已绑定单页，将解绑原绑定单页以最新绑定的单页为准</h3>
                <dl>
                    <dt>
                        <label class='form-control-label'>本地部署目录名称</label>
                    </dt>
                    <dd class="form-group">
                        <input type="text" name="page_dir" required class="form-control" value=""/>
                        <input type="hidden" name="page_id"/>
                        <input type="hidden" name="page_code"/>
                    </dd>
                </dl>
            </div>
        </form>`,
        callback:function(key){
            // 部署成功后回调
            if(!M.component.modal_call_status[key]){
                M.component.modal_call_status[key]=1;
                metui.use(['form','app_form'],function(){
                    formSaveCallback($(key+' form').attr('data-validate_order'), {
                        true_fun: function() {
                            metAlert(' ');
                        },
                        false_fun:function() {
                            metAlert(' ');
                        },
                    });
                });
            }
        }
    };
    // 点击部署按钮
    $(document).on('click', met_page_list+' .btn-page-set', function(event) {
        var id=$(this).data('id'),
            page_code=$(this).data('page_code');
            page_dir=$(this).data('page_dir');
        setTimeout(function(){
            var $form=$(met_page_add_modal+' form');
            $form[0].reset();
            $form.data('formValidation').resetForm();
            $form.find('[name="page_id"]').val(id);
            $form.find('[name="page_code"]').val(page_code);
            $form.find('[name="page_dir"]').val(page_dir);
        },0);
    });
    // 部署-提交后提示
    $(document).on('submit', met_page_add_modal+' form', function(event) {
        if(!$('.has-danger',this).length) metAlert('单页部署中，请耐心等待30秒左右，请勿操作页面！','',1);
    });
})();