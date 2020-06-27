<div class="container fluid">
    <h3><i class = "fas fa-edit"></i>EDIT DATA BARANG</h3>
        <form action="<?php echo base_url().'Daftar_Api/aksi_daftarAPI'?>" method="post">
            <div class="for-group">
                <label>Nama</label>
                <input type="text" name="nama" class="form-control" >
            </div>
            <div class="for-group">
                <label>Kode Autentifikasi</label>
                <input type="text" name="auth" class="form-control" >
            </div>
            <button type="submit" class="btn btn-primary btn-sm">SIMPAN</button>

        </form> 
</div>