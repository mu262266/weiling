<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
    <div class="pageFormContent" data-layout-h="0">
        <table class="table table-bordered table-striped table-hover">
            <tbody>
            <tr><td>
                <label for="j_title" class="control-label x85">编号:</label>
                <?php echo ($Rs["id"]); ?>
            </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">百科标题:</label>
                <?php echo ($Rs["title"]); ?>
            </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">百科内容:</label>
                <?php echo ($Rs["content"]); ?>

            </td></tr>

            </tbody>
            </tbody>
        </table>
    </div>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
    </ul>
</div>