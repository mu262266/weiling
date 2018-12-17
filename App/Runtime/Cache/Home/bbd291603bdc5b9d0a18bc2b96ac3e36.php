<?php if (!defined('THINK_PATH')) exit();?>

<div class="bjui-pageContent tableContent">
    <form action="/weiling/index.php?s=/Home/Medicine/edit/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate" enctype="multipart/form-data">
		<input type="hidden" name="id" value="<?php echo ($id); ?>">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
            <tr><td>
                <label for="j_title" class="control-label x85">药品名称:</label>
                <input type="text" data-rule="required" size="25" name="name" id="j_username" value="<?php echo ($Rs["name"]); ?>" >
             </td></tr>
             <tr><td>
                <label for="j_title" class="control-label x85">库存:</label>
                <input type="text" data-rule="required" size="25" name="num" id="j_username" value="<?php echo ($Rs["num"]); ?>" >
             </td></tr>
             <tr><td>
                <label for="j_title" class="control-label x85">药品单价:</label>
                <input type="text" data-rule="required" size="25" name="price" id="j_username" value="<?php echo ($Rs["price"]); ?>" >
             </td></tr>
             <tr><td>
                <label for="j_title" class="control-label x85">药品单位:</label>
                <input type="text" data-rule="required" size="25" name="count" id="j_username" value="<?php echo ($Rs["count"]); ?>" >
             </td></tr>
             <tr><td>
                <label for="j_title" class="control-label x85">药品图片:</label>
                
                <input type="file"  name="img">
             </td></tr>
          
            

             
             
                <tr><td><label  class='control-label x85'>药品分类:</label><select  name="typeid" class="form-control">
             
             <?php if(is_array($list)): foreach($list as $key=>$v): ?><option value="<?php echo ($v["id"]); ?>" <?php if($v["id"] == $Rs['typeid'] ): ?>selected<?php endif; ?>  >
             <?php switch($v["level"]): case "0": ?>+<?php break;?> <?php case "1": ?>+--<?php break; case "2": ?>+------<?php break; default: endswitch;?>
             <?php echo ($v["name"]); ?>
              </option><?php endforeach; endif; ?>
             </select></td></tr>
                
             
            
            
            
            <tr><td>
                <label for="j_title" class="control-label x85">规格型号：</label>
                <input type="text" data-rule="required" size="25" name="format" id="j_tel" value="<?php echo ($Rs["format"]); ?>" >
                
             </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">剂型：</label>
                <input type="text" data-rule="required" size="25" name="mtype" id="j_phone" value="<?php echo ($Rs["name"]); ?>" >
            </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">批注文号：</label>
                <input type="text" data-rule="required" size="25" name="pzwh" id="j_phone" value="<?php echo ($Rs["pzwh"]); ?>" >
            </td></tr>
             <tr><td>
                 <label for="j_title" class="control-label x85">生产日期：</label>
            <input type='text' data-toggle='datepicker' value='<?php echo ($Rs["start_time"]); ?>' name='start_time' class='form-control' size='25' />
             </td></tr>
              <tr><td>
                <label for="j_title" class="control-label x85">有效期限：</label>
                <input type="text" data-rule="required" size="25" name="upto" id="j_phone" value="<?php echo ($Rs["upto"]); ?>" >
            </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">有效期至：</label>
                <input type='text' data-toggle='datepicker' value='<?php echo ($Rs["end_time"]); ?>' name='end_time' class='form-control' size='25' />
             </td></tr>
              <tr><td>
                <label for="j_title" class="control-label x85">生产企业：</label>
                <input type="text" data-rule="required" size="25" name="company" id="j_phone" value="<?php echo ($Rs["company"]); ?>" >
            </td></tr>
             
             <tr><td colspan=2><label for='blfy_input' class='control-label x85'>不良反应:</label><textarea name='blfy'  cols='55' rows='5' ><?php echo ($Rs["name"]); ?></textarea></td></tr>
            
            <tr><td colspan=2><label for='blfy_input' class='control-label x85'>主要成分:</label><textarea name='main'  cols='55' rows='5' ><?php echo ($Rs["main"]); ?></textarea></td></tr>
            <tr><td colspan=2><label for='blfy_input' class='control-label x85'>用法用量:</label><textarea name='use'  cols='55' rows='5' ><?php echo ($Rs["use"]); ?></textarea></td></tr>
            <tr><td colspan=2><label for='blfy_input' class='control-label x85'>贮存方式:</label><textarea name='storage'  cols='55' rows='5' ><?php echo ($Rs["storage"]); ?></textarea></td></tr>
             <tr><td colspan=2><label for='blfy_input' class='control-label x85'>功能主治:</label><textarea name='cure'  cols='55' rows='5' ><?php echo ($Rs["cure"]); ?></textarea></td></tr>
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