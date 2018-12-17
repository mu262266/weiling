<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
     <table data-toggle="tablefixed" data-width="100%" data-layout-h="0" data-nowrap="true">
		<thead>
    	<tr>
        <th height=30>登陆账号</th>
        <th>真实姓名</th>
		<th>所在部门</th>
		<th>担任职位</th>
		<th>内线/短号</th>
        <th>移动电话</th>
        <th>登录IP</th>
        </tr>
        </thead>
        <tbody>
		<?php if(is_array($list)): foreach($list as $key=>$v): ?><tr>
        <td height=30><?php echo ($v["username"]); ?></td>
        <td><?php echo ($v["truename"]); ?></td>
		<td><?php echo ($v["depname"]); ?> </td>
		<td><?php echo ($v["posname"]); ?></td>
		<td><?php echo ($v["neixian"]); ?></td>
        <td><?php echo ($v["phone"]); ?></td>
        <td><a href="http://ip138.com/ips138.asp?ip=<?php echo ($v["loginip"]); ?>&action=2" target="_blank"><?php echo ($v["loginip"]); ?></a></td>
        </tr><?php endforeach; endif; ?>
          
        </tbody>
	</table>
    <div class="bjui-footBar">
        <div class="pages">
            <span>共 <?php echo ($totalCount); ?> 条  每页 <?php echo ($numPerPage); ?> 条</span>
        </div>
	    <div class="pagination-box" data-toggle="pagination" data-total="<?php echo ($totalCount); ?>" data-page-size="<?php echo ($numPerPage); ?>" data-page-current="<?php echo ($currentPage); ?>">
        </div>
    </div>
</div>