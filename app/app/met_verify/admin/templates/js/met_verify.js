(function(){
    var that=$.extend(true,{}, admin_module);
    TEMPLOADFUNS['met_verify/userlist']=
    TEMPLOADFUNS['met_verify/log']=function(){
        M.component.commonList();
    }
})();