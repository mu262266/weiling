<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
    <form action="/123123/index.php?s=/Home/Medicine/clear/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate">
		
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
			<tr style=" padding-top:10px; padding-bottom:10px">
        <td style=" padding-top:10px; padding-bottom:10px"><label for='mingcheng_input' class='control-label x85'>药品名称:</label><input type='text' id='name' name='name'  size='20'  ></td>
      </tr>
  <tr style=" padding-top:10px; padding-bottom:10px">
    <td style=" padding-top:10px; padding-bottom:10px"><label for='mingcheng_input' class='control-label x85'>数量:</label><input type='text' id='num' name='num'  size='20'  ><button id="btn" type="button" class="btn-default"  style=" position: relative; left: 20px">计算总价</button></td></tr></tr>
        <tr style=" padding-top:10px; padding-bottom:10px">
          <td style=" padding-top:10px; padding-bottom:10px"><label for='mingcheng_input' class='control-label x85'>总价:</label><input type='text' name="total"  readonly="readonly" id="total"  size='20'  ></td></tr>
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
<script>
  $("#btn").click(function(){
   var name = $("#name").val();
  
   var  name2= encodeURI(name);
  
   var num = $("#num").val();
    $.ajax({
             type: "POST",
             url: "/123123/index.php?s=/Home/Medicine/clear_ajax",
             data: {name:name2},
             dataType: "json",
             success: function(data){
             var all =data *num;
             $("#total").val(all);
                      }
         });
  })
   
</script>