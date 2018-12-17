<?php if (!defined('THINK_PATH')) exit();?>

<div class="bjui-pageContent tableContent">
    <form action="/123123/index.php?s=/Home/Baike/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate" enctype="multipart/form-data">

        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                <tr><td>
                    <label for="j_title" class="control-label x85">百科标题:</label>
                    <input type="text" data-rule="required" size="25" name="title" id="j_username" value="" >
                </td></tr>
                <tr><td colspan=2><label for='content_input' class='control-label x85'>百科内容:</label><div style='display: inline-block; vertical-align: middle;'><textarea name='content'   data-toggle='kindeditor' data-minheight='150' data-items='fontname, fontsize, |, forecolor, hilitecolor, bold, italic, underline, removeformat, |, justifyleft, justifycenter, justifyright, insertorderedlist, insertunorderedlist, |, emoticons, image, link'></textarea></div></td></tr>
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