<?php if (!defined('THINK_PATH')) exit();?>

<div class="bjui-pageContent tableContent">
    <form action="/123123/index.php?s=/Home/Case/edit/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate" enctype="multipart/form-data">
		<input type="hidden" name="id" value="<?php echo ($id); ?>">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
            
            <tr><td>
                <label for="j_title" class="control-label x85">姓名:</label>
                <input type="text" data-rule="required" size="25" name="name" id="j_username" value="<?php echo ($Rs["name"]); ?>"  >
             </td></tr>
            <tr><td>
            <label for="j_title" class="control-label x85">性别：</label>
              <select name="sex"  data-toggle="selectpicker" data-rule="required">
               
                <option value="0" >男</option>
                <option value="1">女</option>
                 </select>
             </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">出生日期:</label>
                <input type="text" data-rule="required" size="25" name="birth" id="j_truename" value="<?php echo (date('Y-m-d',$Rs["birth"])); ?>" >
                <span>请按以下格式填写 2018/10/18</span>
             </td></tr>
            
            <tr><td>
                <label for="j_title" class="control-label x85">身份证:</label>
                
                <input type="text" data-rule="required" size="25" name="idcard" id="j_truename" value="<?php echo ($Rs["idcard"]); ?>" >
             </td></tr>
       
             
             <tr><td>
                <label for="j_title" class="control-label x85">电话： </label>
                <input type="text" data-rule="required" size="25" name="tel" onkeyup="value=value.replace(/[^\d]/g,'') " id="j_tel" value="<?php echo ($Rs["tel"]); ?>" placeholder="请输入数字">
             </td></tr>

              <tr><td>
                <label for="j_title" class="control-label x85">体重:</label>
                
                <input type="text" data-rule="required" size="25" name="weight" id="j_truename" value="<?php echo ($Rs["weight"]); ?>" >(kg)
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