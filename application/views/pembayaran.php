<div class="container-fluid">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="alert alert-success">
                <?php
                    $total = 0;
                    if($keranjang = $this->cart->contents())
                    {
                        foreach ($keranjang as $item){
                            $total = $total + $item['subtotal'];
                        }
                        echo "<h3>Total Belanja Anda : Rp. ".number_format($total,0,',','.');
                    
                ?>
            </div><br><br>
            <h4>Input Alamat Pengiriman dan Pembayaran</h4>
            <form action="<?php echo base_url()?>Dashboard/proses_pesanan" method="post">
                <div class="form-group">
                    <label>Nama Lengkap</label>
                    <input type="text" name="nama" class="form-control" placeholder="Masukkan Nama Lengkap">
                </div>
                <div class="form-group">
                    <label>Alamat Lengkap</label>
                    <input type="text" name="alamat" class="form-control" placeholder="Masukkan Alamat Lengkap">
                </div>
                <div class="form-group">
                    <label>No-Telp</label>
                    <input type="text" name="no-telp" class="form-control" placeholder="Masukkan Nomor Telpon Lengkap">
                </div>
                <div class="form-group">
                    <label>Jasa Pengiriman</label>
                    <select class="form-control">
                        <option>JNE</option>
                        <option>J&T</option>
                        <option>POS INDONESIA</option>
                        <option>GOJEK</option>
                        <option>GRAB</option>  
                    </select>
                </div>
                <div class="form-group">
                    <label>Pilih Metode Pembayaran</label>
                    <select class="form-control">
                        <option>OVO</option>
                        <option>GOPAY</option>
                        <option>DANA</option>  
                    </select>
                </div>

                <button type="submit" class="btn btn-success mb-3">Pesan</button>
            </form>
            <?php
            }else{
                echo "<h3>Keranjang Belanja Masih Kosong";
            }
            ?>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>