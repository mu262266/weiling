<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
    <form action="/weiling/index.php?s=/Home/Hospital/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate" enctype="multipart/form-data">
		
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
		  
<tr><td><label class='control-label x85'>医院名称:</label><input type='text' id='title' name='name'  size='20'   value=''  ></td></tr>

<tr><td><label class='control-label x85'>医院地址:</label><input type='text' id='title' name='address'  size='20'   value=''  ></td></tr>

<tr><td><label class='control-label x85'>医院详情:</label><input type='text' id='title' name='link'  size='32'  value="" ></td></tr>

<tr><td>
    <label for="j_title" class="control-label x85">药品图片:</label>

    <input type="file"  name="img">
</td></tr>

<tr><td><label class='control-label x85'>联系电话:</label><input type='text' id='title' name='tel'  size='20'   value=''  ></td></tr>



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