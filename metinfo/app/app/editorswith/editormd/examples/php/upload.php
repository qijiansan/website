<?php

	/*
	 * PHP upload demo for Editor.md
     *
     * @FileName: upload.php
     * @Auther: Pandao
     * @E-mail: pandao@vip.qq.com
     * @CreateTime: 2015-02-13 23:20:04
     * @UpdateTime: 2015-02-14 14:52:50
     * Copyright@2015 Editor.md all right reserved.
	 */

    //header("Content-Type:application/json; charset=utf-8"); // Unsupport IE
    header("Content-Type:text/html; charset=utf-8");
    header("Access-Control-Allow-Origin: *");
    
    require("editormd.uploader.class.php");

    error_reporting(E_ALL & ~E_NOTICE);
	
	$path           =  dirname(__FILE__) .'\..\..\..\..'. DIRECTORY_SEPARATOR;
    date_default_timezone_set('PRC');
    $makefilename   =  date('Y').date('m');
	$url            =  dirname('http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF']) . '/';
    $savePath       =  $path.'..\upload\\'.$makefilename.'\\' ;
 


      if(!file_exists($savePath)){

       @mkdir ($savePath , 0777);
    }
  
	$savePath = realpath($savePath).DIRECTORY_SEPARATOR;
	$saveURL  = $url . '../../../../../upload/'.$makefilename.'/';
  

	$formats  = array(
		'image' => array('gif', 'jpg', 'jpeg', 'png', 'bmp','ico')
	);

    $name = 'editormd-image-file';

    if (isset($_FILES[$name]))
    {        


        $imageUploader = new EditorMdUploader($savePath, $saveURL, $formats['image'], true);  // Ymdhis表示按日期生成文件名，利用date()函数
        
        $imageUploader->config(array(
            'maxSize' => 1024,        // 允许上传的最大文件大小，以KB为单位，默认值为1024
            'cover'   => true         // 是否覆盖同名文件，默认为true
        ));
        
        if ($imageUploader->upload($name))
        {
            $imageUploader->message('上传成功！', 1);
        }
        else
        {
            $imageUploader->message('上传失败！', 0);
        }
    }
?>