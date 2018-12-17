<?php if (!defined('THINK_PATH')) exit();?>
<div class="bjui-pageHeader" style="background:#FFF;">
    <div style="padding: 0 15px;">
        <h4 style="margin-bottom:20px;">
            <?php echo (C("WEB_SITE_TITLE")); ?>　<small>基于X-Mis智能管理系统，快速开发而来，想管理什么，建表即可！</small>
        </h4>
        <div style="float:left; width:157px;">
            <div class="alert alert-info" role="alert" style="margin:0 0 5px; padding:10px;">
                <img src="/weiling/Public/images/weixin.png" width="135">
            </div>
        </div>
        <div style="margin-left:170px; margin-top:22px; padding-left:6px;">
            <span style="padding-left:10px;">X-Mis智能开发平台：</span><a href="http://www.xinyou88.net/" target="_blank">http://www.xinyou88.net/</a>   QQ群交流：147654231
        </div>
        <div class="row" style="margin-left:170px; margin-top:10px;">
		 <form action="/weiling/index.php?s=/Home/Index/index/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate">
		 <input type="hidden" name="id" value="<?php echo (session('uid')); ?>">
            <div class="col-md-12" style="padding:5px;">
                <div class="alert alert-success" role="alert" style="margin:0 0 5px; padding:5px 15px;">
                    <h5>我的便签、记事本 &nbsp;<button type="submit" class="btn-default">保存</button></h5>
                    <textarea style="width:100%;height:75px;border:0px;line-height:150%" name="bian"><?php echo ($Rs["bian"]); ?></textarea> 
                </div>
            </div>
		 </form>
        </div>
    </div>
</div>
<div class="bjui-pageContent">
    <div style="margin-top:5px;  overflow:hidden;">
        <div class="row" style="padding: 0 8px;">
            <!--//-->
                      <div class="col-md-6">
                        <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-user-md"></i> 员工去向 <a href="<?php echo U('quxiangs/index');?>" data-toggle="navtab" data-id="<?php echo U('quxiangs/index');?>" data-title="员工去向">详细</a></h3></div>
                            <div style="min-height:185px">
							<table class="table table-bordered table-striped table-hover">
                             <thead>
                              <tr>
                              <th height=30>开始时间</th>
                              <th>结束时间</th>
							  <th>类型</th>
                              <th>去向说明</th>
                              <th>外出人</th>
                              <th>所在部门</th>
                              </tr>
                            </thead>
                            <tbody>
							<?php $list=M('quxiang')->order("id desc")->limit(5)->select(); ?>
						    <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
                              <td><?php echo (substr($v["ktime"],0,10)); ?></td>
                              <td><?php echo (substr($v["jtime"],0,10)); ?></td>
							  <td><?php echo (msubstr($v["type"],0,20)); ?></td>
                              <td><?php echo (msubstr($v["title"],0,20)); ?></td>
                              <td><?php echo (msubstr($v["uname"],0,20)); ?></td>
                              <td><?php echo (depname($v["uid"])); ?></td>
                            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                           </tbody>
                          </table>
						  </div>
                        </div>
                      </div>
                      <!--//-->
                      <!--//-->
                      <div class="col-md-6">
                        <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-pencil-square-o"></i> 我的任务 <a href="<?php echo U('renwu/index');?>" data-toggle="navtab" data-id="<?php echo U('renwu/index');?>" data-title="我的任务">详细</a></h3></div>
                            <div style="min-height:185px">
							<table class="table table-bordered table-striped table-hover">
                             <thead>
                              <tr>
                              <th height=30>截至时间</th>
                              <th>任务标题</th>
                              <th>状态</th>
                              <th>发布人</th>
                              <th>发布时间</th>
                              </tr>
                            </thead>
                            <tbody>
							<?php $list=M('renwu')->where(array('juid'=>array('like','%'.session(uid).'%')))->order("id desc")->limit(5)->select(); ?>
						    <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
                              <td><?php echo (msubstr($v["jztime"],0,10)); ?></td>
                              <td><?php echo (msubstr($v["biaoti"],0,20)); ?></td>
                              <td><?php echo ($v["jieguo"]); ?></td>
                              <td><?php echo ($v["uname"]); ?></td>
                              <td><?php echo (substr($v["addtime"],0,10)); ?></td>
                            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                           </tbody>
                          </table>
						  </div>
                        </div>
                      </div>
                      <!--//-->  
					  <!--//-->
                      <div class="col-md-6">
                        <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-volume-up"></i>  通知公告 <a href="<?php echo U('tongzhi/index');?>" data-toggle="navtab" data-id="<?php echo U('tongzhi/index');?>" data-title="通知公告">详细</a></h3></div>
                            <div style="min-height:185px">
							<table class="table table-bordered table-striped table-hover">
                             <thead>
                              <tr>
                              <th height=30>通知标题</th>
                              <th>截止日期</th>
                              <th>发布人</th>
                              <th>发布时间</th>
                              </tr>
                            </thead>
                            <tbody>
							<?php $list=M('tongzhi')->where(array('juid'=>array('like','%'.session(uid).'%')))->order("id desc")->limit(5)->select(); ?>
						    <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
                              <td><?php echo (msubstr($v["title"],0,20)); ?></td>
                              <td><?php echo (msubstr($v["jztime"],0,10)); ?></td>
                              <td><?php echo ($v["uname"]); ?></td>
                              <td><?php echo (substr($v["addtime"],0,10)); ?></td>
                            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                           </tbody>
                          </table>
						  </div>
                        </div>
                      </div>
                      <!--//--> 
                      <div class="col-md-6">
                        <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-phone-square"></i>  待跟踪客户 <a href="<?php echo U('cust/daoqi');?>" data-toggle="navtab" data-id="<?php echo U('cust/daoqi');?>" data-title="客户跟踪">详细</a></h3></div>
                            <div style="min-height:185px">
							<table class="table table-bordered table-striped table-hover">
                             <thead>
                              <tr>
                              <th height=30>客户名称</th>
							  <th>进展</th>
							  <th>联系人</th>
							  <th>手机号码</th>
                              <th>下次联系</th>
							  <th>最后更新</th>
                              </tr>
                            </thead>
                            <tbody>
							<?php $map['xiaci'] = array(array('egt',date("Y-m-d",strtotime("-1 week"))),array('elt',date("Y-m-d",strtotime("+1 month")))); $map[] = array("uid"=>array('EQ', session("uid")),"juid"=>array('like','%'.session("uid").'%'),"_logic"=>"or"); $list=M('cust')->where($map)->limit(5)->select(); ?>
						    <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
                              <td><?php echo (msubstr($v["title"],0,20)); ?></td>
							  <td><?php echo ($v["jinzhan"]); ?></td>
							  <td><?php echo ($v["name"]); ?></td>
							  <td><?php echo ($v["dianhua"]); ?></td>
                              <td><?php echo (substr($v["xiaci"],0,10)); ?></td>
							  <td><?php echo (substr($v["updatetime"],0,10)); ?></td>
                            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                           </tbody>
                          </table>
						  </div>
                        </div>
                      </div>
                      <!--//-->  

                      <!--//-->
                      <div class="col-md-6">
                        <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-bus"></i>  发货记录 <a href="<?php echo U('fahuo/index');?>" data-toggle="navtab" data-id="<?php echo U('fahuo/index');?>" data-title="发货记录">详细</a></h3></div>
                            <div style="min-height:185px">
							<table class="table table-bordered table-striped table-hover">
                             <thead>
                              <tr>
                              <th height=30>客户名称</th>
                              <th>发货时间</th>
                              <th>物流快递</th>
                              <th>备注</th>
                              </tr>
                            </thead>
                            <tbody>
							<?php $list=M('fahuo')->order("id desc")->limit(5)->select(); ?>
						    <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
                              <td><?php echo (msubstr($v["title"],0,20)); ?></td>
                              <td><?php echo (msubstr($v["shijian"],0,10)); ?></td>
                              <td><?php echo ($v["value"]); ?></td>
                              <td><?php echo (substr($v["beizhu"],0,50)); ?></td>
                            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                           </tbody>
                          </table>
						  </div>
                        </div>
                      </div>
                      <!--//--> 
                      <div class="col-md-6">
                        <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-leaf"></i>  到期的合同 <a href="<?php echo U('hetong/daoqi');?>" data-toggle="navtab" data-id="<?php echo U('hetong/daoqi');?>" data-title="到期的合同">详细</a></h3></div>
                            <div style="min-height:185px">
							<table class="table table-bordered table-striped table-hover">
                             <thead>
                              <tr>
                              <th height=30>客户名称</th>
							  <th>合同名称</th>
							  <th>合同编号</th>
                              <th>截止日期</th>
							  <th>经办人</th>
                              </tr>
                            </thead>
                            <tbody>
							<?php $map['jztime'] = array(array('egt',date("Y-m-d",strtotime("-1 week"))),array('elt',date("Y-m-d",strtotime("+1 month")))); $list=M('hetong')->where($map)->limit(5)->select(); ?>
						    <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
                              <td><?php echo (msubstr($v["title"],0,20)); ?></td>
							  <td><?php echo ($v["mingcheng"]); ?></td>
							  <td><?php echo ($v["bianhao"]); ?></td>
                              <td><?php echo (substr($v["jztime"],0,10)); ?></td>
							  <td><?php echo ($v["jingban"]); ?></td>
                            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                           </tbody>
                          </table>
						  </div>
                        </div>
                      </div>
                      <!--//-->  									  
			
        </div>
    </div>
</div>