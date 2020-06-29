<div class="container-fluid">
    <div class="card">
    <h5 class="card-header">Detail Produk</h5>
        <div class="card-body">

        <?php foreach($barang as $brg) : ?>
            <div class="row">
                <div class="col-md-4"> 
                    <img src="<?php echo base_url().'/assets/img/'.$brg->gambar ?> " alt="Error" class="card-img-top">
                </div>
            <div class="col-md-8"> 
                <table class="table">
                    <tr>
                        <td>Nama Produk</td>
                        <td><strong><?php echo $brg->nama_barang ?></strong></td>
                    </tr>
                    <tr>
                        <td>Keterangan</td>
                        <td><strong><?php echo $brg->keterangan ?></strong></td>
                    </tr>
                    <tr>
                        <td>Kategori</td>
                        <td><strong><?php echo $brg->kategori ?></strong></td>
                    </tr>
                    <tr>
                        <td>Stock</td>
                        <td><strong><?php echo $brg->stock ?></strong></td>
                    </tr>
                    <tr>
                        <td>Harga</td>
                        <td><strong><div class="btn btn-success">Rp.<?php echo number_format($brg->harga,0,',','.')  ?></div></strong></td>
                    </tr>
                    
                </table>
                <?php echo anchor('Dashboard/tambah_ke_keranjang/'.$brg->id,'<div class="btn btn-primary">Tambah Ke Keranjang</div>') ?>
                <?php echo anchor('','<div class="btn btn-danger">Kembali</div>') ?>
           
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

        <?php foreach($barang as $brg) : ?>
            <div class="row">
            <div class="col-md-8"> 
                <table class="table">
                    <tr>
                        <td>Wilayah Persebaran</td>
                        <td><?php echo $brg->wilayah ?></td>
                    </tr>
                    <tr>
                        <td>Manfaat</td>
                        <td><?php echo $brg->manfaat ?></td>
                    </tr>
                    <tr>
                        <td>Jenis Makanan</td>
                        <td><?php echo $brg->makanan ?></td>
                    </tr>
                    <tr>
                        <td>Kandungan Gizi</td>
                        <td><?php echo $brg->gizi ?></td>
                    </tr>
                    
                </table>
    
           </div>
          </div>
        </div>
        <?php endforeach; ?>
    </div>
</div>