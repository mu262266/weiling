<?php if (!defined('THINK_PATH')) exit();?>

<div class="bjui-pageContent tableContent">
    <form action="/weiling/index.php?s=/Home/User/edit/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate">
		<input type="hidden" name="id" value="<?php echo ($id); ?>">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
			<tr><td>
                <label for="j_title" class="control-label x85">登陆账号:</label>
                <input type="text" data-rule="required" size="25" name="username" id="j_username" value="<?php echo ($Rs['username']); ?>" <?php if($id == 0): else: ?>readonly<?php endif; ?> >
             </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">登陆密码:</label>
                <input type="password" data-rule="required" size="25"  name="pwd" id="j_pwd" value="<?php echo ($Rs['password']); ?>" >
				<span>不修改密码，此项不用改动</span>
             </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">真实姓名：</label>
                <input type="text" data-rule="required" size="25" name="truename" id="j_truename" value="<?php echo ($Rs['truename']); ?>" >
             </td></tr>
            <tr><td>
            <label for="j_title" class="control-label x85">性别：</label>
              <select name="sex"  data-toggle="selectpicker" data-rule="required">
			    <?php if($Rs['sex'] == 男 ): ?><option value="男" selected>男</option><?php else: ?><option value="女" selected>女</option><?php endif; ?>
                <option value="男">男</option>
                <option value="女">女</option>
                 </select>
             </td></tr>
            <tr><td>
            <label for="j_name" class="control-label x85">所在部门：</label>
			<select  name="depname" data-toggle="selectpicker" data-rule="required">
             <option  value="0">请选择</option>
	         <?php if(is_array($list)): foreach($list as $key=>$v): ?><option <?php if($v["title"] == $Rs['depname'] ): ?>selected value="<?php echo ($Rs['depname']); ?>" <?php else: ?>value="<?php echo ($v["title"]); ?>"<?php endif; ?> >
	          <?php switch($v["level"]): case "0": ?>+<?php break;?> <?php case "1": ?>+--<?php break; case "2": ?>+------<?php break; default: endswitch;?>
	         <?php echo ($v["title"]); ?>
	          </option><?php endforeach; endif; ?>
             </select>
             </td></tr>
            <tr><td>
               <label for="j_name" class="control-label x85">担任职位：</label>
			   <select  name="posname" data-toggle="selectpicker" data-rule="required">
               <option  value="0">请选择</option>
	         <?php $listz=M('auth_group')->where(array('type'=>1))->select(); ?>
	          <?php if(is_array($listz)): foreach($listz as $key=>$v): ?><option <?php if($v["title"] == $Rs['posname'] ): ?>selected value="<?php echo ($Rs['posname']); ?>" <?php else: ?>value="<?php echo ($v["title"]); ?>"<?php endif; ?> >
	          +<?php echo ($v["title"]); ?>
	          </option><?php endforeach; endif; ?>
             </select>
             </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">固定电话：</label>
                <input type="text" data-rule="required" size="25" name="tel" id="j_tel" value="<?php echo ($Rs['tel']); ?>" >
             </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">移动电话：</label>
                <input type="text" data-rule="required" size="25" name="phone" id="j_phone" value="<?php echo ($Rs['phone']); ?>" >
            </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">电子邮箱：</label>
                <input type="text" data-rule="required" size="25" name="email" id="j_email" value="<?php echo ($Rs['email']); ?>" >
             </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">qq：</label>
                <input type="text" data-rule="required" size="25" name="qq" id="j_qq" value="<?php echo ($Rs['qq']); ?>" >
            </td></tr>
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