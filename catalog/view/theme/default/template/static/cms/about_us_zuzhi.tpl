<div>&nbsp;</div>

<div>
    <div class="jvf_fl jvf_help" style="margin: 0px 0px 0px 20px; padding: 0px; float: left; width: 242px; color: rgb(0, 0, 0); font-family: Arial, sans-serif; line-height: normal;">
        <div style="margin: 20px 0px 0px; padding: 0px; float: left; width: 242px;"><img src="http://www.feimao3d.com/Index/Tpl/default/public/images/login_left.jpg" style="border: none;" /></div>

        <div style="width:242px; clear:both; margin-left:40px;">
            <style type="text/css">.articles_ul{ width:127px; list-style:none; }
                .articles_ul li{width:137px;border-bottom:dashed 1px #000000; height:40px; line-height:50px; padding-left:10px;overflow:hidden; background-image:none!important;}
                .articles_ul a{ font-size:16px; color:#000000;text-decoration:none;  font-family:'微软雅黑'}
                .articles_ul .cuerr_li{}
                .articles_ul .cuerr_li a{ font-size:16px; color:#000000;font-weight:bold; text-decoration:none;  font-family:'微软雅黑'}

                .articles_ul_2{ width:127px; list-style:none; display:none;}
                .articles_ul_2 li{width:137px;border-bottom:dashed 1px #000000; height:40px; line-height:50px; padding-left:10px;overflow:hidden; background-image:none!important;}
                .articles_ul_2 a{ font-size:14px!important; color:#000000;text-decoration:none;  font-family:'微软雅黑'}
                .articles_ul_2 .cuerr_li{ }
                .articles_ul_2 .cuerr_li a{ font-size:14px!important; color:#000000;font-weight:bold; text-decoration:none;  font-family:'微软雅黑'}

                .category_ul{ width:127px; list-style:none; }
                .category_ul li{width:137px;border-bottom:dashed 1px #000000; height:40px; line-height:50px; padding-left:10px;background:url('/Index/Tpl/default/public/images/about_li.jpg');}
                .category_ul a{ font-size:16px; color:#000000;text-decoration:none;  font-family:'微软雅黑'}
                .category_ul .cuerr_li{background:url('/Index/Tpl/default/public/images/about_li_cuerr.jpg');}
                .category_ul .cuerr_li a{ font-size:16px; color:#000000;font-weight:bold; text-decoration:none;  font-family:'微软雅黑'}
            </style>
            <ul class="articles_ul">
                <li><a href="index.php?route=information/information&information_id=21">公司背景</a></li>
                <li><a href="index.php?route=information/information&information_id=18">总裁致辞</a></li>
                <li><a href="index.php?route=information/information&information_id=19">组织架构</a></li>
                <li><a href="index.php?route=information/information&information_id=20">企业文化</a></li>
            </ul>

            <ul class="category_ul">

                <li id="ss_20" style="background-image: url('/catalog/view/theme/default/image/feimao/about_li.jpg');">
                    <a href="javascript:show(20);">新闻中心</a>
                </li>
                <ul id="articles_ul_2_20" class="articles_ul_2" style="display: none;">
                    <li><a href="index.php?route=information/information&information_id=22">平台即将上线</a></li>
                    <li><a href="index.php?route=information/information&information_id=23">实验室解决方案</a></li>
                </ul>
            </ul>
        </div>

        <div style="margin: 0px; padding: 0px; height: 300px;">&nbsp;</div>
    </div>

    <div class="jvf_fr help_con" style="margin: 0px; padding: 0px; float: left; width: 690px; color: rgb(0, 0, 0); font-family: Arial, sans-serif; line-height: normal;">
        <h1 style="margin: 0px; padding: 10px 0px 5px; font-size: 18px; border-bottom-style: solid;
         border-bottom-width: 1px; border-bottom-color: rgb(255, 138, 0); color: rgb(255, 138, 0); font-weight: bold;
         font-family: 微软雅黑;">组织架构</h1>

        <div class="article" style="font-family:'微软雅黑'; line-height:30px; letter-spacing:3px;">

            董事会
            <br/>
            企发会             董事长           监事会
            <br/>
            总经理            <br/>
            副总经理           副总经理           副总经理            <br/>
            企划部 市场部   办公室 财务部 人事部  技术部 客服部


        </div>
    </div>
</div>
<script>

    function show(id){
        if($("#articles_ul_2_"+id).is(":hidden")){
            $("#articles_ul_2_"+id).show();
            $("#ss_"+id).css("backgroundImage","url('/catalog/view/theme/default/image/feimao/about_li_cuerr.jpg')");
        }else{
            $("#articles_ul_2_"+id).hide();
            $("#ss_"+id).css("backgroundImage","url('/catalog/view/theme/default/image/feimao/about_li.jpg')");
        }
    }

</script>
