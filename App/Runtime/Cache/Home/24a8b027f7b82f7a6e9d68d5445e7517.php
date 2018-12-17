<?php if (!defined('THINK_PATH')) exit();?>

<div class="bjui-pageContent tableContent">
    <form action="/weiling/index.php?s=/Home/Member/edit/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate" enctype="multipart/form-data">
		<input type="hidden" name="id" value="<?php echo ($id); ?>">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
            
            <tr><td>
                <label for="j_title" class="control-label x85">头像:</label>
                <img width="100px" height="100px" src="/weiling/Uploads/Public/<?php echo ($Rs["headimg"]); ?>">
                <input type="file"  name="headimg"   >
             </td></tr>
             <tr><td>
                <label for="j_title" class="control-label x85">身份证:</label>
                 <input type="text" data-rule="ID_card,required" readonly size="25"  id="j_idcard" value="<?php echo ($Rs['idcard']); ?>"  >
             </td></tr>
			<tr><td>
                <label for="j_title" class="control-label x85">姓名:</label>
                <input type="text" data-rule="chinese,required" size="25" name="real_name"  value="<?php echo ($Rs['real_name']); ?>"  >
             </td></tr>

             <tr><td>
            <label for="j_title" class="control-label x85">用户角色：</label>
              <select name="type"  data-toggle="selectpicker" data-rule="required">
               
                <option value="1" <?php if($Rs["type"] == 1 ): ?>selected<?php endif; ?> >村医</option>
                <option value="2"  <?php if($Rs["type"] == 2 ): ?>selected<?php endif; ?> >专家</option>
                 </select>
             </td></tr>

            <tr><td>
                <label for="j_title" class="control-label x85">电话： </label>
                <input type="text" data-rule="mobile,required" id="j_phone" value="<?php echo ($Rs['telephone']); ?>" placeholder="请输入数字">
             </td></tr> 
            <tr><td>
            <label for="j_title" class="control-label x85">性别：</label>
              <select name="sex"  data-toggle="selectpicker" data-rule="required">
               
                <option value="0"   <?php if($Rs["sex"] == 男 ): ?>selected<?php endif; ?>>男</option>
                <option value="1"   <?php if($Rs["sex"] == 女 ): ?>selected<?php endif; ?>>女</option>
                 </select>
             </td></tr>

             <tr><td>
                <label for="j_title" class="control-label x85">出生日期：</label>
                <input type="text" data-rule="date,required" size="25" name="birth" id="j_tel" value="<?php echo ($Rs['birth']); ?>" >
                <span>请按以下格式填写 2018/10/18</span>
             </td></tr>
             <tr><td>
                <label for="j_title" class="control-label x85">所属地区：</label>
                <input type="text" data-rule="required" size="25" name="area" id="j_area" value="<?php echo ($Rs['area']); ?>" >
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