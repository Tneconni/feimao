<?php echo $header;?>
<div style="height:640px; background:url('/catalog/view/theme/default/image/feimao/bg.jpg');">
    <div style="width:1203px; margin:auto; height:640px; background-color:#FFFFFF;">
        <div style="float:left; width:242px; margin-left:20px; margin-top:20px;">
            <img src="/catalog/view/theme/default/image/feimao/login_left.jpg">
        </div>
        <div style="float:right; width:912px;margin-top:20px;">
            <div style="width:895px; background:url('/catalog/view/theme/default/image/feimao/p_1_bg.jpg') no-repeat; height:94px;">
                <a href="/index.php/index/index" style="display:block;width:173px; height:63px;background:url('/catalog/view/theme/default/image/feimao/pre_btn.jpg') no-repeat; margin-left:720px;"></a>
            </div>
            <div style="width:895px; margin-top:35px;">
                <div style="float:left; width:224px; margin-left:20px;">
                    <img src="/catalog/view/theme/default/image/feimao/p_1_1.jpg">
                    <div style="height:40px; margin-top:10px; line-height:40px; font-size:22px; font-weight:bold; color:#000000;">
                        新建模型
                    </div>
                    <div style="height:60px; margin-top:8px; line-height:20px; font-size:13px; color:#000000;">
                        没有模型的用户请联系客服，先制作模型后体验3D打印
                    </div>
                    <style>
                        .style_1{display:block; width:195px;
			    height:45px;
			    line-height:45px; padding-left:60px; color:#eb5015;
				text-decoration:none;font-weight:bold; background-repeat:no-repeat;}
                        .style_1:hover{display:block; width:195px;
			   height:45px;
			   line-height:45px; padding-left:60px; color:#eb5015;
			   text-decoration:none; font-weight:bold;background-repeat:no-repeat;}


                    </style>
                    <div style="font-size:14px; color:#898989;">
                        <script>
                            function showpan(){
                                $('#blk3').show();
                            }
                            function closepan(){
                                $('#blk3').hide();
                            }
                        </script>
                        <a href="tencent://message/?uin=792724991&amp;Site=qq&amp;Menu=yes" target="_blank" class="style_1" style="background:url('/catalog/view/theme/default/image/feimao/btn_bg.jpg')">
                            联系客服（QQ）&nbsp;<img src='image/qq.png' width='25px;' />
                        </a>
                        <!--联系客服代码 start-->
                        <div id="blk3" class="blk" style="display:none; left:-150px;">
                            <div class="head"><div class="head-right"></div></div>
                            <div class="main" style="margin-left:200px;">
                                <h2><img src="/catalog/view/theme/default/image/feimao/kefu/kefu_title.jpg"></h2>
                                <a href="javascript:closepan()" id="close3" class="closeBtn"></a>
                                <div style="clear:both; height:1px;"></div>
                                <ul>
                                    <li style="width:84px;"><img src="/catalog/view/theme/default/image/feimao/kefu/kefu_qq.jpg"></li>
                                    <li style="width:134px;"><a href="tencent://message/?uin=792724991&amp;Site=qq&amp;Menu=yes" target="_blank">792724991</a></li>
                                </ul>
                                <ul>
                                    <li style="width:84px;"><img src="/catalog/view/theme/default/image/feimao/kefu/kefu_tel.jpg"></li>
                                    <li style="width:134px;"><a href="javascript:void(0);">400-888-8888</a></li>
                                </ul>
                            </div>
                            <div class="foot"><div class="foot-right"></div></div>
                        </div>
                        <!--联系客服代码 end-->
                    </div>
                </div>
                <div style="float:left; width:224px; margin-left:80px;">
                    <img src="/catalog/view/theme/default/image/feimao/p_1_2.jpg">
                    <div style="height:40px; margin-top:10px; line-height:40px; font-size:22px; font-weight:bold; color:#000000;">
                        选择模型
                    </div>
                    <div style="height:60px; margin-top:8px; line-height:20px; font-size:13px; color:#000000;">
                        选择模型库中的模型进行体验3D打印
                    </div>
                    <div style="font-size:14px; color:#898989;">
                        <a href="<?php echo $modelwarehuose; ?>" class="style_1" style="background:url('/catalog/view/theme/default/image/feimao/btn_bg.jpg')">
                            进入模型库
                        </a>
                    </div>
                </div>
                <div style="float:left; width:224px; margin-left:80px;">
                    <img src="/catalog/view/theme/default/image/feimao/p_1_3.jpg">
                    <div style="height:40px; margin-top:10px; line-height:40px; font-size:22px; font-weight:bold; color:#000000;">
                        已有模型
                    </div>
                    <div style="height:60px; margin-top:8px; line-height:20px; font-size:13px; color:#000000;">
                        已有模型的用户可以跳过此步，直接进入打印需求填写
                    </div>
                    <div style="font-size:14px; color:#898989;">
                        <a href="<?php echo $uploadmodel; ?>" class="style_1" style="background:url('/catalog/view/theme/default/image/feimao/btn_bg.jpg')">
                            上传已有模型
                        </a>
                    </div>
                </div>
                <div style="clear:both;"></div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
</div>
