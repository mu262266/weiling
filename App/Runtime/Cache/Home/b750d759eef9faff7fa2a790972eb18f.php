<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-bordered table-striped table-hover">
           <tbody>
		   <tr><td>
                <label for="j_title" class="control-label x85">药品名称:</label>
                <?php echo ($Rs["name"]); ?>
             </td></tr>
             <tr><td>
                <label for="j_title" class="control-label x85">库存:</label>
                <?php echo ($Rs["num"]); ?>
             </td></tr>
             <tr><td>
                <label for="j_title" class="control-label x85">药品图片:</label>
                
              <img width="100px" height="100px" src="/weiling/Uploads/Public/<?php echo ($Rs["img"]); ?>">
             </td></tr>
          
            

             
             
                <tr><td><label  class='control-label x85'>药品分类:</label>
             
             
             <?php echo ($typename); ?>
             </td></tr>
                
             
            
            
            
            <tr><td>
                <label for="j_title" class="control-label x85">规格型号：</label>
               <?php echo ($Rs["format"]); ?>
                
             </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">剂型：</label>
               <?php echo ($Rs["mtype"]); ?>
            </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">批注文号：</label>
                <?php echo ($Rs["pzwh"]); ?>
            </td></tr>
             <tr><td>
                 <label for="j_title" class="control-label x85">生产日期：</label>
            <?php echo (date("Y-m-d",$Rs["start_time "])); ?>
             </td></tr>
              <tr><td>
                <label for="j_title" class="control-label x85">有效期限：</label>
               <?php echo ($Rs["upto"]); ?>
            </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">有效期至：</label>
                <?php echo (date("Y-m-d",$Rs["end_time"])); ?>
             </td></tr>
              <tr><td>
                <label for="j_title" class="control-label x85">生产企业：</label>
                <?php echo ($Rs["company"]); ?>
            </td></tr>
             <tr><td>
                <label for="j_title" class="control-label x85">不良反应 :</label>
                <?php echo ($Rs["blfy"]); ?>
            </td></tr>

             <tr><td>
                <label for="j_title" class="control-label x85">主要成分 :</label>
                <?php echo ($Rs["main"]); ?>
            </td></tr>

            <tr><td>
                <label for="j_title" class="control-label x85">贮存方式 :</label>
                <?php echo ($Rs["storage"]); ?>
            </td></tr>
             
              <tr><td>
                <label for="j_title" class="control-label x85">功能主治 :</label>
                <?php echo ($Rs["cure"]); ?>
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