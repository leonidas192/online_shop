<div class="container-fluid">
    <div class="card">
    <h5 class="card-header">Detail Masakan</h5>
        <div class="card-body">

        <?php foreach($masakan as $i) : ?>
            <div class="row">
                <div class="col-md-4"> 
                    <img src="<?php echo base_url().'/assets/img/'.$i->gambar ?> " alt="Error" class="card-img-top">
                </div>
           </div>
          </div>
        </div>
        <?php endforeach; ?>
    </div>
</div>

<div class="container-fluid">
    <div class="card">
    <h5 class="card-header">Keterangan Detail</h5>
        <div class="card-body">

        <?php foreach($masakan as $i) : ?>
            <div class="row">
            <div class="col-md-8"> 
                <table class="table">
                    <tr>
                        <td>Nama Masakan</td>
                        <td><?php echo $i->nama ?></td>
                    </tr>
                    <tr>
                        <td>Bahan</td>
                        <td><?php echo $i->bahan ?></td>
                    </tr>
                    <tr>
                        <td>Langkah-Langkah</td>
                        <td><?php echo $i->langkah ?></td>
                    </tr>
                    
                </table>
                <a href="<?php echo base_url('admin/Data_masakan/index')?>"><div class="btn btn-primary">Kembali</div></a>
           </div>
          </div>
        </div>
        <?php endforeach; ?>
    </div>
</div>