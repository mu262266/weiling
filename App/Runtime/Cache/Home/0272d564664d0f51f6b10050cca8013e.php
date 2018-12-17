<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
    <form action="/123123/index.php?s=/Home/Baike/edit/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?php echo ($id); ?>">
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                <tr><td><label  class='control-label x85'>百科标题:</label><input type='text' id='sort' name='title'  size='20' data-toggle='spinner' data-min='0' data-max='100' data-step='1' data-rule='integer'  value='<?php echo ($Rs["title"]); ?>'  ></td></tr>
                <tr><td colspan=2><label for='content_input' class='control-label x85'>百科内容:</label><div style='display: inline-block; vertical-align: middle;'><textarea name='content'   data-toggle='kindeditor' data-minheight='150' data-items='fontname, fontsize, |, forecolor, hilitecolor, bold, italic, underline, removeformat, |, justifyleft, justifycenter, justifyright, insertorderedlist, insertunorderedlist, |, emoticons, image, link'><?php echo ($Rs["content"]); ?></textarea></div></td></tr>

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