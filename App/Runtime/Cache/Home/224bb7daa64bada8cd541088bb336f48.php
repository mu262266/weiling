<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
    <form action="/123123/index.php?s=/Home/Yaoshang/edit/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate" enctype="multipart/form-data">
		<input type="hidden" name="id" value="<?php echo ($id); ?>">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
           <tr><td><label  class='control-label x85'>排序:</label><input type='text' id='sort' name='sort'  size='20' data-toggle='spinner' data-min='0' data-max='100' data-step='1' data-rule='integer'  value='<?php echo ($Rs["sort"]); ?>'  ></td></tr>
           <tr><td><label class='control-label x85'>药商名称:</label><input type='text' id='title' name='title'  size='20'   value='<?php echo ($Rs["name"]); ?>'></td></tr>
           <tr><td><label  class='control-label x85'>绑定药商:</label><select  name="uid" class="form-control">
               <option  value="0"> </option>
               <?php if(is_array($list)): foreach($list as $key=>$v): ?><option <?php if($v["id"] == $Rs['uid'] ): ?>selected value="<?php echo ($v["uid"]); ?>" <?php else: ?>value="<?php echo ($v["id"]); ?>"<?php endif; ?> >
                   <?php echo ($v["username"]); ?>
                   </option><?php endforeach; endif; ?>
           </select></td></tr>
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