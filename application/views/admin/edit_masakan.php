<div class="container fluid">
    <h3><i class = "fas fa-edit"></i>EDIT DATA MASAKAN</h3>
    <?php foreach($masakan as $i) : ?>
        <form action="<?php echo base_url().'admin/Data_masakan/update'?>" method="post">
            <div class="for-group">
                <label>Nama Masakan</label>
                <input type="text" name="nama" class="form-control" value="<?php echo $i->nama ?>">
            </div>
            <div class="for-group">
                <label>Bahan</label>
                <input type="hidden" name="id" class="form-control" value="<?php echo $i->id ?>">
                <input type="text" name="bahan" class="form-control" value="<?php echo $i->bahan ?>">
            </div>
            <div class="for-group">
                <label>Langkah-Langkah</label>
                <input type="text" name="langkah" class="form-control" value="<?php echo $i->langkah ?>">
            </div>
            <button type="submit" class="btn btn-primary btn-sm">SIMPAN</button>

        </form>
    <?php endforeach; ?>   
</div>