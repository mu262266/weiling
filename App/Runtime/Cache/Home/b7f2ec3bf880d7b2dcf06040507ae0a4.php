<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
    <form action="/123123/index.php?s=/Home/Mtype/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate" enctype="multipart/form-data">
		
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
		   <tr><td><label  class='control-label x85'>上级:</label><select id="mtype"  name="pid" class="form-control">
             <option  value="0">顶级</option>
	         <?php if(is_array($list)): foreach($list as $key=>$v): ?><option value="<?php echo ($v["id"]); ?>" >
	         <?php switch($v["level"]): case "0": ?>+<?php break;?> <?php case "1": ?>+--<?php break; case "2": ?>+------<?php break; default: endswitch;?>
	         <?php echo ($v["name"]); ?>
	          </option><?php endforeach; endif; ?>
             </select></td></tr>
<tr><td><label class='control-label x85'>分类名称:</label><input type='text' id='title' name='name'  size='20'   value=''  ></td></tr>
<tr><td><label  class='control-label x85'>排序:</label><input type='text' id='sort' name='sort'  size='20' data-toggle='spinner' data-min='0' data-max='100' data-step='1' data-rule='integer'  value=''  ></td></tr>
           <tr id="show" style="display: none"><td>
                   <label for="j_title" class="control-label x85">分类图片:</label>
                   <input type="file"  name="img">

           </td></tr>
           <script>
               $(function(){
                   $("select[name=pid]").change(function(){
                       var value=$(this).val();
                       if(value==0){
                           $("tr[id=show]").hide();
                       }else{
                           $("tr[id=show]").show();
                       }
                   });
               });
           </script>
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