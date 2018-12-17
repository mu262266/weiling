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
            <th>订单编号</th>
            <th>订单的药品信息</th>
            <th>订单药品价格总计</th>
            <th>订单地区</th>
            <th>详细地址</th>
            <th>订单支付状态</th>
            <th>订单发货状态</th>
            <th>下单时间</th>
            <th>是否加入逾期中</th>
            <th>用户是否申请退款</th>
        </tr>
        </thead>
        <tbody>

        <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
                <td></td>
                <td><?php echo ($v["numbering"]); ?></td>
                <td><a href="/weiling/index.php?s=/Home/Order/commodity/id/<?php echo ($v['numbering']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="navtab" data-id="form<?php echo ($v["id"]); ?>" data-reload-warn="本页已有打开的内容，确定将刷新本页内容，是否继续？" data-title="订单编号<?php echo ($v["numbering"]); ?>的药品" >药品购买详细信息</a></td>

                <td><?php echo (msubstr($v["z_price"],0,20)); ?></td>
                <td><?php echo ($v["area"]); ?></td>
                <td><?php echo ($v["address"]); ?></td>
                <td>
                    <?php switch($v["payment_status"]): case "0": ?>未支付<?php break;?> <?php case "1": ?>已支付<?php break; case "2": ?>逾期支付<?php break;?>
                        <?php default: endswitch;?>
                </td>
                <td>
                    <?php switch($v["send_status"]): case "0": ?>未发货|<a href="/weiling/index.php?s=/Home/Order/send/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="doajax" data-confirm-msg="确定要发货吗？"data-width="600" data-height="450" data-id="dialog-mask" data-mask="true" >发货</a><?php break; case "1": ?>已发货<?php break; case "2": ?>已收货<?php break; default: endswitch;?>
                </td>
                <td><?php echo date('Y-m-d H:i:s',$v['create_time']); ?></td>
                <td>
                <?php switch($v["payment_status"]): case "0": ?><a href="/weiling/index.php?s=/Home/Order/update/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="doajax" data-confirm-msg="确定要将订单加入逾期订单吗？"data-width="600" data-height="450" data-id="dialog-mask" data-mask="true" >加入逾期</a><?php break;?>
                    <?php case "1": ?>订单已支付<?php break;?>
                    <?php case "2": ?>逾期订单|<a href="/weiling/index.php?s=/Home/Order/pay/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="doajax" data-confirm-msg="订单是否支付？"data-width="600" data-height="450" data-id="dialog-mask" data-mask="true" >已支付</a><?php break;?> <?php default: endswitch;?>
                </td>


                <td>
                    <?php switch($v["back_status"]): case "0": ?>无操作<?php break;?>
                        <?php case "1": ?>已退款<?php break;?>
                        <?php case "2": ?>已申请|<a href="/weiling/index.php?s=/Home/Order/back/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要退款吗？" data-icon="remove">退款</a><?php break;?> <?php default: endswitch;?>
                </td>
            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
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