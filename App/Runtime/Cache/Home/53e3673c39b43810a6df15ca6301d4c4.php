<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
    <form action="/123123/index.php?s=/Home/Hetong/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate">
		<input type="hidden" name="id" value="<?php echo ($id); ?>">
        <div class="pageFormContent" data-layout-h="0">
		
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
			<tr><td><label for='type_input' class='control-label x85'>合同类型:</label><select name='type'  data-toggle='selectpicker' ><option value=''>请选择</option><?php if(is_array(C("CUST_XUQIU"))): $i = 0; $__LIST__ = C("CUST_XUQIU");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$type): $mod = ($i % 2 );++$i;?><option value='<?php echo ($type); ?>' <?php if( $type == $Rs['type'] ): ?>selected<?php endif; ?> ><?php echo ($type); ?></option><?php endforeach; endif; else: echo "" ;endif; ?></select></td><td><label for='bianhao_input' class='control-label x85'>合同编号:</label><input type='text' id='bianhao' name='bianhao'  size='20'   value='<?php echo ($bianhao); ?>'  ></td></tr>
<tr><td><label for='mingcheng_input' class='control-label x85'>合同名称:</label><input type='text' id='mingcheng' name='mingcheng' data-rule='required;' size='20'   value='<?php echo ($Rs["mingcheng"]); ?>'  ></td></tr>
<tr><td><label for='title_input' class='control-label x85'>客户名称:</label><input type='text' id='title' name='title'  size='20' data-toggle='lookup' data-url='/123123/index.php?s=/Home/basic/cust/navTabId/<?php echo CONTROLLER_NAME;?>'  value='<?php echo ($Rs["title"]); ?>'  ></td><td><label for='name_input' class='control-label x85'>联系人:</label><input type='text' id='name' name='name'  size='20'   value='<?php echo ($Rs["name"]); ?>'  ></td></tr>
<tr><td><label for='dianhua_input' class='control-label x85'>联系电话:</label><input type='text' id='dianhua' name='dianhua' data-rule='required;' size='20'   value='<?php echo ($Rs["dianhua"]); ?>'  ></td><td><label for='jingban_input' class='control-label x85'>业务员:</label><input type='text' id='jingban' name='jingban'  size='20' data-toggle='lookup' data-url='/123123/index.php?s=/Home/basic/jingban/navTabId/<?php echo CONTROLLER_NAME;?>'  value='<?php echo ($Rs["jingban"]); ?>'  ></td></tr>
<tr><td><label for='juname_input' class='control-label x85'>分享给:</label><input type='text' id='juname' name='juname'  size='20' data-toggle='lookup' data-url='/123123/index.php?s=/Home/basic/user/navTabId/<?php echo CONTROLLER_NAME;?>'  value='<?php echo ($Rs["juname"]); ?>'  ></td><td><label for='jztime_input' class='control-label x85'>截至日期:</label><input type='text' data-toggle='datepicker' id='jztime' name='jztime'   size='20'   value='<?php echo (substr($Rs["jztime"],0,10)); ?>'  ></td></tr>
<tr><td><label for='xufei_input' class='control-label x85'>续费:</label><input type='text' id='xufei' name='xufei' data-rule='required;number' size='20'   value='<?php echo ($Rs["xufei"]); ?>'  ></td></tr>
<Tr><Td colspan=2>
<div style="margin:0 auto;width:88%;font-size:18px;padding:10px;text-align:center;">
<script type="text/javascript">
 function js(a)
 {
 document.getElementById("xiaoji"+a).value=document.getElementById("num"+a).value*document.getElementById("index["+a+"].xjiage").value
 
 var count = 0;
                // 遍历所有文本框
                var list = document.getElementsByTagName("input");
                for(var i = 0; i < list.length; i++) {
                    var name = list[i].getAttribute("name");
                    // 忽略不是xiaoji开头的
                    if (!/^xiaoji/.test(name)) continue;
                    var num = parseInt(list[i].value);
                    // 如果不是数字则忽略
                    if (isNaN(num)) continue;
                    count += num;
                }
  document.getElementsByName("jine")[0].value = count;
 }  
 </script>

产品明细表
<table class="table table-bordered table-hover table-striped table-top"   data-toggle="tabledit">
                <thead>
                    <tr> 
                        <th title="序号" ><input type="text"  size="5" value="#index#"  placeholder="序号"></th>
                        <th title="产品编号"><input type="text" name="xbianhao[#index#]" id="index[#index#].bianhao"  type="text"  value="" size="10" data-toggle="lookup" data-url='/123123/index.php?s=/Home/Basic/chanpin/navTabId/<?php echo CONTROLLER_NAME;?>' data-group="index[#index#]" ></th>
                        <th title="产品名称"><input type="text" name="xtitle[#index#]" id="index[#index#].title" type="text"  value="" size="10"  ></th>
                        <th title="产品分类"><input type="text" name="xfenlei[#index#]" id="index[#index#].fenlei" type="text"  value="" size="10" ></th>
						<th title="产品规格"><input type="text" name="xtype[#index#]"  id="index[#index#].type" size="10" value=""></th>
						<th title="计量单位"><input type="text" name="xdanwei[#index#]"  id="index[#index#].danwei" size="10" value=""></th>
						<th title="产品单价"><input type="text" name="xjiage[#index#]"  id="index[#index#].xjiage"  onblur="js('#index#')" size="10" value=""></th>
						<th title="数量"><input type="text" name="xshuliang[#index#]" size="10" id="num#index#" onblur="js('#index#')" value="0" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"></th>
						<th title="小计"><input type="text" name="xiaoji[#index#]"  id="xiaoji#index#" size="10" value=""></th>
						<th title="备注"><input type="text" name="xbeizhu[#index#]" id="index[#index#].beizhu" size="10"  value="" ><input type="hidden" name="xcid[#index#]" id="cid[#index#].cid"  size="10" value="" ></th>
						<th title="" data-addtool="true" width="50">
                            <a href="/123123/index.php?s=/Home/public/delok" class="btn btn-red row-del" data-confirm-msg="确定要删除该行信息吗？">删</a>
                        </th>
                    </tr>
                </thead>
                <tbody>
			  
                </tbody>
            </table>
			<table class="table table-bordered table-hover table-striped table-top" >
                <tbody>
                  <Tr><td style="width:75%;text-align:right;">合计</td><Td><input name="jine" type="text" size="10"></td></tr>				  
                </tbody>
            </table>
 </div>
 </td></tr>
<tr><td colspan=2><input type='hidden' id='cid' name='cid'  size='0'   value='<?php echo ($Rs["cid"]); ?>'  ></td></tr></tr>
<tr><td colspan=2><input type='hidden' id='juid' name='juid'  size='0'   value='<?php echo ($Rs["juid"]); ?>'  ></td></tr></tr>
<tr><td colspan=2><label for='beizhu_input' class='control-label x85'>备注说明:</label><textarea name='beizhu'  cols='65' rows='5' ><?php echo ($Rs["beizhu"]); ?></textarea></td></tr></tr>
<tr><td colspan=2><label for='content_input' class='control-label x85'>合同内容:</label><div style='display: inline-block; vertical-align: middle;'><textarea name='content'   data-toggle='kindeditor' data-minheight='150' data-items='fontname, fontsize, |, forecolor, hilitecolor, bold, italic, underline, removeformat, |, justifyleft, justifycenter, justifyright, insertorderedlist, insertunorderedlist, |, emoticons, image, link'><?php echo ($Rs["content"]); ?></textarea></div></td></tr></tr>
<tr><td colspan=2><label for='attid_input' class='control-label x85'>上传附件:</label><div style='display: inline-block; vertical-align: middle;'><IFRAME   src='/123123/index.php?s=/Home/Public/attfile/attid/<?php echo ($attid); ?>/'  frameBorder=0 width='100%' height='30' scrolling=no ></IFRAME><input type='hidden' id='attid' name='attid'  value='<?php echo ($attid); ?>'  ><a href='/123123/index.php?s=/Home/Public/uploads/attid/<?php echo ($attid); ?>/'   class='btn btn-green btn-sm' data-toggle='dialog' data-width='550' data-height='300' data-id='dialog-normal' data-mask='true' >已上传文件管理</a></div></td></tr>
           </tbody>
          </table>
        </div>
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
       <li><button type="button" class="btn-close" data-icon="close">取消</button></li>
       <li><button type="submit" class="btn-default" data-icon="save">保存</button></li>
    </ul>
</div>