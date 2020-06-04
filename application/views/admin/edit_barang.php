<div class="container fluid">
    <h3><i class = "fas fa-edit"></i>EDIT DATA BARANG</h3>
    <?php foreach($barang as $i) : ?>
        <form action="<?php echo base_url().'admin/Data_barang/update'?>" method="post">
            <div class="for-group">
                <label>Nama Barang</label>
                <input type="text" name="nama_barang" class="form-control" value="<?php echo $i->nama_barang ?>">
            </div>
            <div class="for-group">
                <label>Kategori</label>
                <input type="text" name="kategori" class="form-control" value="<?php echo $i->kategori ?>">
            </div>
            <div class="for-group">
                <label>Harga</label>
                <input type="text" name="harga" class="form-control" value="<?php echo $i->harga ?>">
            </div>
            <div class="for-group">
                <label>Keterangan</label>
                <input type="hidden" name="id" class="form-control" value="<?php echo $i->id ?>">
                <input type="text" name="keterangan" class="form-control" value="<?php echo $i->keterangan ?>">
            </div>
            <div class="for-group">
                <label>Stock</label>
                <input type="text" name="stock" class="form-control" value="<?php echo $i->stock ?>">
            </div>
            <button type="submit" class="btn btn-primary btn-sm">SIMPAN</button>

        </form>
    <?php endforeach; ?>   
</div>