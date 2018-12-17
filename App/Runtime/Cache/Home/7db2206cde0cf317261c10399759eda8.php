<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
        <div class="pageFormContent" style="margin:1px;" data-layout-h="0">
		          <ul class="nav nav-tabs" role="tablist">
                   <li class="active"><a href="#cust" role="tab" data-toggle="tab">客户管理</a></li>
					<li><a href='#custcon15' role='tab' data-toggle='tab'>联系人</a></li><li><a href='#custgd16' role='tab' data-toggle='tab'>跟单记录</a></li><li><a href='#hetong30' role='tab' data-toggle='tab'>合同管理</a></li>
                  </ul>
		 <div class="tab-content" style="border:0">
           <div class="tab-pane fade active in" id="cust"><table class="table table-bordered table-striped table-hover">
           <tbody>
		   <tr><td><label for='id_input' class='control-label x85'>ID:</label><?php echo ($Rs["id"]); ?></td><td><label for='xuqiu_input' class='control-label x85'>需求类型:</label><?php echo ($Rs["xuqiu"]); ?></td></tr>
<tr><td><label for='title_input' class='control-label x85'>客户名称:</label><?php echo ($Rs["title"]); ?></td><td><label for='name_input' class='control-label x85'>联系人:</label><?php echo ($Rs["name"]); ?></td></tr>
<tr><td><label for='dianhua_input' class='control-label x85'>手机号码:</label><?php echo ($Rs["dianhua"]); ?></td><td><label for='dizhi_input' class='control-label x85'>联系地址:</label><?php echo ($Rs["dizhi"]); ?></td></tr>
<tr><td><label for='qq_input' class='control-label x85'>QQ:</label><?php echo ($Rs["qq"]); ?></td><td><label for='email_input' class='control-label x85'>电子邮箱:</label><?php echo ($Rs["email"]); ?></td></tr>
<tr><td><label for='laiyuan_input' class='control-label x85'>客户来源:</label><?php echo ($Rs["laiyuan"]); ?></td><td><label for='jinzhan_input' class='control-label x85'>进展:</label><?php echo ($Rs["jinzhan"]); ?></td></tr>
<tr><td><label for='xiaci_input' class='control-label x85'>下次联系:</label><?php echo ($Rs["xiaci"]); ?></td><td><label for='aihao_input' class='control-label x85'>兴趣爱好:</label><?php echo ($Rs["aihao"]); ?></td></tr>
<tr><td><label for='juname_input' class='control-label x85'>分享给:</label><?php echo ($Rs["juname"]); ?></td><td><label for='uname_input' class='control-label x85'>添加人:</label><?php echo ($Rs["uname"]); ?></td></tr>
<tr><td><label for='addtime_input' class='control-label x85'>添加时间:</label><?php echo ($Rs["addtime"]); ?></td><td><label for='uuname_input' class='control-label x85'>更新人:</label><?php echo ($Rs["uuname"]); ?></td></tr>
<tr><td><label for='updatetime_input' class='control-label x85'>更新时间:</label><?php echo ($Rs["updatetime"]); ?></td></tr>
<tr><td colspan=2><label for='beizhu_input' class='control-label x85'>备注:</label><div style='display: inline-block; vertical-align: middle;'><?php echo ($Rs["beizhu"]); ?></div></td></tr>
           </tbody>
          </table>
		  </div>
		  
		 <div class='tab-pane fade' id='custcon15'><table class='table table-bordered table-striped table-hover'><?php $custconlist=M('custcon')->where(array('cid'=>$Rs['id']))->limit(100)->select(); ?> <thead> <tr><th>ID</th>
<th height=30>客户名称</th>
<th height=30>联系人</th>
<th>性别</th>
<th height=30>部门职务</th>
<th height=30>手机号码</th>
<th height=30>QQ</th>
<th height=30>电子邮箱</th>
<th height=30>兴趣爱好</th>
<th height=30>添加人</th>
<th>添加时间</th>
<th>详细</th></tr></thead><tbody><?php if(is_array($custconlist)): foreach($custconlist as $key=>$custconv): ?><tr><td><?php echo ($custconv["id"]); ?></td>
<td><?php echo (msubstr($custconv["title"],0,20)); ?></td>
<td><?php echo (msubstr($custconv["name"],0,20)); ?></td>
<td><?php echo ($custconv["sex"]); ?></td>
<td><?php echo (msubstr($custconv["zhiwu"],0,20)); ?></td>
<td><?php echo (msubstr($custconv["dianhua"],0,20)); ?></td>
<td><?php echo (msubstr($custconv["qq"],0,20)); ?></td>
<td><?php echo (msubstr($custconv["email"],0,20)); ?></td>
<td><?php echo (msubstr($custconv["aihao"],0,20)); ?></td>
<td><?php echo (msubstr($custconv["uname"],0,20)); ?></td>
<td><?php echo (substr($custconv["addtime"],0,10)); ?></td>
  <td><a href='/weiling/index.php?s=/Home/custcon/view/id/<?php echo ($custconv['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>'  data-toggle='dialog' data-width='800' data-height='500' data-id='dialog-maskcustcon' data-mask='true' >详细</a></td></tr><?php endforeach; endif; ?> </tbody> </table></div><div class='tab-pane fade' id='custgd16'><table class='table table-bordered table-striped table-hover'><?php $custgdlist=M('custgd')->where(array('cid'=>$Rs['id']))->limit(100)->select(); ?> <thead> <tr><th>ID</th>
<th height=30>客户名称</th>
<th>跟单方式</th>
<th height=30>跟单详情</th>
<th>进展阶段</th>
<th>下次联系</th>
<th height=30>添加人</th>
<th>添加时间</th>
<th>详细</th></tr></thead><tbody><?php if(is_array($custgdlist)): foreach($custgdlist as $key=>$custgdv): ?><tr><td><?php echo ($custgdv["id"]); ?></td>
<td><?php echo (msubstr($custgdv["title"],0,20)); ?></td>
<td><?php echo ($custgdv["type"]); ?></td>
<td><?php echo (msubstr($custgdv["content"],0,20)); ?></td>
<td><?php echo ($custgdv["jinzhan"]); ?></td>
<td><?php echo (substr($custgdv["xiaci"],0,10)); ?></td>
<td><?php echo (msubstr($custgdv["uname"],0,20)); ?></td>
<td><?php echo (substr($custgdv["addtime"],0,10)); ?></td>
  <td><a href='/weiling/index.php?s=/Home/custgd/view/id/<?php echo ($custgdv['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>'  data-toggle='dialog' data-width='800' data-height='500' data-id='dialog-maskcustgd' data-mask='true' >详细</a></td></tr><?php endforeach; endif; ?> </tbody> </table></div><div class='tab-pane fade' id='hetong30'><table class='table table-bordered table-striped table-hover'><?php $hetonglist=M('hetong')->where(array('cid'=>$Rs['id']))->limit(100)->select(); ?> <thead> <tr><th>ID</th>
<th>合同类型</th>
<th>合同编号</th>
<th height=30>合同名称</th>
<th>合同金额</th>
<th>已收款</th>
<th>未收款</th>
<th>已开票</th>
<th>已付款</th>
<th height=30>经办人</th>
<th>截至日期</th>
<th>续费</th>
<th>审核状态</th>
</tr></thead><tbody><?php if(is_array($hetonglist)): foreach($hetonglist as $key=>$hetongv): ?><tr><td><?php echo ($hetongv["id"]); ?></td>
<td><?php echo ($hetongv["type"]); ?></td>
<td><?php echo ($hetongv["bianhao"]); ?></td>
<td><?php echo (msubstr($hetongv["mingcheng"],0,20)); ?></td>
<td><?php echo ($hetongv["jine"]); ?></td>
<td><?php echo ($hetongv["yishou"]); ?></td>
<td><?php echo ($hetongv["weishou"]); ?></td>
<td><?php echo ($hetongv["kaipiao"]); ?></td>
<td><?php echo ($hetongv["yifu"]); ?></td>
<td><?php echo (msubstr($hetongv["jingban"],0,20)); ?></td>
<td><?php echo (substr($hetongv["jztime"],0,10)); ?></td>
<td><?php echo ($hetongv["xufei"]); ?></td>
<td><?php echo ($hetongv["shenhe"]); ?></td>
</tr><?php endforeach; endif; ?> </tbody> </table></div>
		   
		 </div>
        </div>
</div>
<div class="bjui-pageFooter">
    <ul>
       <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
    </ul>
</div>