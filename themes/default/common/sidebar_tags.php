 <div class="panel panel-default">
    <div class="panel-heading">
        <h4>热点关键词</h4>
    </div>
    <div class="panel-body">
	    <?php if($taglist){?>
        <ul class="list-unstyled">
	        <?php foreach($taglist as $v){?>
            <span class="label label-grey"><a href="<?php echo url('tag_show','',$v['tag_title']);?>"><?php echo $v['tag_title'];?></a></span>
			<?php }?>
        </ul>
        <?php }?>
    </div>
</div> 