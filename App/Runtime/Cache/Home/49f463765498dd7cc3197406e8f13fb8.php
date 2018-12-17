<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="/weiling/index.php?s=/Home/Order" method="post">

        <input type="hidden" name="pageSize" value="<?php echo ($numPerPage); ?>">
        <input type="hidden" name="pageCurrent" value="<?php echo ((isset($_REQUEST['pageNum']) && ($_REQUEST['pageNum'] !== ""))?($_REQUEST['pageNum']):1); ?>">

        <div class="bjui-searchBar">
            <label>关键词：</label><input type="text" value="<?php echo ($_REQUEST['keys']); ?>" name="keys" class="form-control" size="15" />

            <button type="submit"  class="btn-default" data-icon="search">查询</button>
            <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>

            <?php if(display(CONTROLLER_NAME.'/inxls')){ ?><span style="float:right;margin-right:5px;"></span><?php } ?>

            <?php if(display(CONTROLLER_NAME.'/load')){ ?><span style="float:right;margin-right:5px;"></span><?php } ?>

            <?php if(display(CONTROLLER_NAME.'/add')){ ?><span style="float:right;margin-right:5px;"></span><?php } ?>
        </div>
    </form>

</div>
<div class="bjui-pageContent tableContent">
    <table data-toggle="tablefixed" data-width="100%" data-layout-h="0" data-nowrap="true">
        <thead>
        <tr>
            <th width="30" height="30"></th>

            <th>药品名字</th>
            <th>药品图片</th>
            <th>药品规格</th>
            <th>药品的单价</th>
            <th>购买的药品数量</th>
            <th>药品的价格</th>
            <th>药品的药商</th>
        </tr>
        </thead>
        <tbody>

        <?php if(is_array($list)): foreach($list as $key=>$v): ?><tr>
                <td></td>

                <td><?php echo ($v["name"]); ?></td>
                <td><img width="100px" height="100px" src="/weiling/Uploads/Public/<?php echo ($v["img"]); ?>"></td>
                <td><?php echo ($v["format"]); ?></td>
                <td><?php echo ($v["d_price"]); ?></td>
                <td><?php echo ($v["num"]); ?></td>
                <td><?php echo (msubstr($v["price"],0,20)); ?></td>
                <td><?php echo ($v["seller_name"]); ?></td>

            </tr><?php endforeach; endif; ?>
        </tbody>
    </table>
</div>
<div class="bjui-pageFooter">
    <div class="pages">
        <span>共 <?php echo ($totalCount); ?> 条  每页 <?php echo ($numPerPage); ?> 条</span>
    </div>
    <div class="pagination-box" data-toggle="pagination" data-total="<?php echo ($totalCount); ?>" data-page-size="<?php echo ($numPerPage); ?>" data-page-current="<?php echo ($currentPage); ?>">
    </div>
</div>