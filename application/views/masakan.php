<div class="row text-center mt-4">

        <?php foreach ($masakan as $i) : ?>
            <div class="card ml-3 mb-3" style="width: 20rem;">
            <img src="<?php echo base_url().'/assets/img/'.$i->gambar ?>"class="card-img-top" alt="..." height="175" width="10">
            <div class="card-body">
            <h4 class="card-title mb-1"><?php echo $i->nama ?></h4>
            <?php echo anchor('Dashboard/detail_masakan/'.$i->id,'<div class="btn btn-success">Detail</div>') ?>
            
        </div>
    </div>
        <?php endforeach ?>
    </div>