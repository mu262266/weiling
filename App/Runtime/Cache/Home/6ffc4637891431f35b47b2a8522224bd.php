<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta charset="utf-8" />
<title>订单详情</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/weiling/Public/css/ectouch.css" rel="stylesheet" type="text/css" />
<link type="text/css"  href="/weiling/Public/css/rui1.css" rel="stylesheet">
<script type="text/javascript" src="/weiling/Public/js/ectouch.js"></script>

</head>
<body style="background-color:#fff">
<style>
.zhuangtai01{ width:44%; height:80px;  font-family:"微软雅黑"; font-size:15px; color:#fff; line-height:80px; float:left; padding:0px; margin:0px; text-align:center}
.zhuangtai02{ width:44%; height:80px;  font-family:"微软雅黑"; font-size:13px; color:#fff; line-height:80px;  float:right;padding:0px; margin:0px; text-align:center;}
.zhuangtai02 img{ width:60px; height:45px; vertical-align:middle}
.orderinfo{ width:44%; height:25px; margin:5px auto;  font-family:"微软雅黑"; font-size:13px; color:#666; line-height:25px; padding:0px 10px; float:left}
.orderinfo span{font-size:14px; color:#999; font-family:"微软雅黑"; margin-left:5px}
.orderinfo i{ position:relative; top:4px}
.orderinfo i img{ width:17px; height:18px}

.orderinfo5{ width:90%; height:28px; margin:5px auto; background-color:#fff; font-family:"微软雅黑"; font-size:13px; color:#666666; line-height:28px; padding:0px 10px}
.orderinfo5 span{ float:right; font-size:12px; color:#999999; font-family:"微软雅黑"}
.goods{width:100%; height:85px; margin:5px auto; border-bottom:thin #eee solid; margin-top:10px; padding-bottom:5px}
.goods:last-child{ border-bottom:none!important}
.daigou{ width:30%; height:35px; float:right; border:none}
</style>

<div style="width:100%; height:80px; background-image:url(/weiling/Public/images/0113.png); background-size:100% 100%; background-repeat:no-repeat">
<p class="zhuangtai01">交易成功</p>
<p class="zhuangtai02"><img src="/weiling/Public/images/zhuangtai.png"></p>
</div>

<div style="clear:both; height:5px; background-color:#eee"></div>

<div style="width:100%; height:auto; padding-top:5px; padding-bottom:5px; ">
<p class="orderinfo"><i><img src="/weiling/Public/images/103.png"></i><span><?php echo ($list["name"]); ?></span></p>
<p class="orderinfo"><i><img src="/weiling/Public/images/107.png"></i><span><?php echo ($list["mobile"]); ?></span></p>
<p class="orderinfo" style="width:100%"><i><img src="/weiling/Public/images/108.png"></i><span style="font-size:12px"><?php echo ($list["area"]); echo ($list["address"]); ?></span></p>
<div style="clear:both"></div>
</div>
<div style="clear:both; height:5px; background-color:#eee"></div>

<?php foreach($medicine as $k=>$v){ ?>
<div class="goods">
<div style="width:25%; height:80px; float:left; margin-top:0px"><img src="/weiling/Uploads/Public<?php echo $medicine[$k][img]; ?>" style="width:100%; height:100%"></div>
<div style="width:73%; height:80px; float: right; background-color:#fff">
<h4 style="font-family:'微软雅黑'; font-size:14px; color:#666; padding:0px; margin:0px; font-weight:normal; width:100%; height:40px; padding-bottom:5px"><?php echo $medicine[$k][name]; ?></h4>

<div style="font-family:'微软雅黑'; font-size:13px; color:#999;">
药品规格：<?php echo $medicine[$k][format]; ?>
</div>

<div style="font-family:'微软雅黑'; font-size:13px; padding-top:3px">
<span style="color:#999999; ">￥<?php echo $medicine[$k][d_price]; ?></span>
<span style="color:#999999; float:right">X&nbsp;&nbsp;<?php echo $medicine[$k][num]; ?></span></div>
</div>
</div>
<?php } ?>

<div style="clear:both; border-bottom:#eee 5px solid"></div>




<div style="clear: both"></div>
<p class="orderinfo5">订单编号<span><?php echo ($list["numbering"]); ?></span></p>
<p class="orderinfo5">创建时间<span><?php echo ($list["create_time"]); ?></span></p>
<p class="orderinfo5">支付方式<span><?php echo ($list["payment"]); ?></span></p>
<p class="orderinfo5" style="border-bottom:none">付款时间<span><?php echo ($list["pay_time"]); ?></span></p>

<div style="clear:both; height:5px; background-color:#eee"></div>

<p class="orderinfo5">商品总价<span>￥<?php echo ($list["z_price"]); ?></span></p>
<p class="orderinfo5">运费金额<span>￥<?php echo ($list["freight"]); ?></span></p>
<p class="orderinfo5">实付款<span style="color:#ff3333; font-size:13px; font-weight:500">￥<?php echo ($list["allprice"]); ?></span></p>



<div style="clear:both; height:70px"></div>
<a href="" style="width:96%; height:40px; display:block; margin:0px auto; background-color:#438acf; color:#FFFFFF; font-size: 16px; line-height:40px; border-radius:2px; border:none; font-family:'微软雅黑'; text-align:center; text-decoration:none">确&nbsp;&nbsp;认</a>





</body>
</html>