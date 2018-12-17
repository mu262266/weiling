<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
    <form action="/123123/index.php?s=/Home/Order/update/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?php echo ($id); ?>">
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                <tr><td><?php if(is_array($list)): foreach($list as $key=>$v): if($v["payment_status"] == 0 ): ?>操作失败 <?php else: ?> 操作成功<?php endif; endforeach; endif; ?>

                </td></tr>
                </tbody>
            </table>
        </div>
    </form>


</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
        <li><button type="submit" class="btn-default" data-icon="save">确定</button></li>
    </ul>
</div>