<div class="container-fluid">
    <button class="btn btn-sm btn-primary mb-3" data-toggle="modal" data-target="#tambah_barang"><i class="fas fa-plus fa-sm"></i>Tambah Barang</button>

    <table class="table table-bordered">
        <tr>
            <th>NO</th>
            <th>NAMA IKAN</th>
            <th>KATEGORI</th>
            <th>HARGA</th>
            <th>KETERANGAN</th>
            <th>STOK</th>
            <th colspan="3">AKSI</th>
        </tr>

        <?php 
            $no=1;
            foreach($barang as $i) : ?>
            
            <tr>
                <td><?php echo $no++ ?></td>
                <td><?php echo $i->nama_barang ?></td>
                <td><?php echo $i->kategori ?></td>
                <td><?php echo $i->harga ?></td>
                <td><?php echo $i->keterangan ?></td>
                <td><?php echo $i->stock ?></td>
                <td><?php echo anchor('admin/Data_barang/detail/'.$i->id,'<div class ="btn btn-success btn-sm"><i class ="fas fa-search-plus"></i></div>') ?></td>
                <td><?php echo anchor('admin/Data_barang/edit/'.$i->id,'<div class ="btn btn-primary btn-sm"><i class ="fas fa-edit"></i></div>') ?></td>
                <td><?php echo anchor('admin/Data_barang/hapus/'.$i->id,'<div class ="btn btn-danger btn-sm"><i class ="fas fa-trash"></i></div>') ?></td>
            </tr>

            <?php endforeach; ?>
    </table>
</div>

<!-- Modal -->
<div class="modal fade" id="tambah_barang" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">Info Barang</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <?php echo form_open_multipart('admin/Data_barang/tambah_aksi'); ?>

                <div class="form-grup">
                    <label>Nama Barang</label>
                    <input type="text" name="nama_barang" class="form-control">
                </div>

                <div class="form-grup">
                    <label>Keterangan</label>
                    <input type="text" name="keterangan" class="form-control">
                </div>

                <div class="form-grup">
                    <label>Kategori</label>
                    <select class="form-control" name="kategori">
                      <option value="Ikan Laut">Ikan Laut</option>
                      <option value="Ikan Tawar">Ikan Tawar</option>
                      <option value="Ikan Hias">Ikan Hias</option>
                    </select>
                </div>

                <div class="form-grup">
                    <label>Harga</label>
                    <input type="number" name="harga" class="form-control">
                </div>

                <div class="form-grup">
                    <label>Stock</label>
                    <input type="number" name="stock" class="form-control">
                </div>

                <div class="form-grup">
                    <label>Wilayah Persebaran</label>
                    <textarea name="wilayah" cols="30" rows="10" class="form-control"></textarea>
                </div>

                <div class="form-grup">
                    <label>Manfaat</label>
                    <textarea name="manfaat" cols="30" rows="10" class="form-control"></textarea>
                </div>

                <div class="form-grup">
                    <label>Makanan</label>
                    <textarea name="makanan" cols="30" rows="10" class="form-control"></textarea>
                </div>

                <div class="form-grup">
                    <label>Tipe Ikan</label>
                    <select class="form-control" name="tipe">
                      <option value="Populer Bulan Ini">Populer Bulan Ini</option>
                      <option value="Normal">Normal</option>
                    </select>
                </div>

                <div class="form-grup">
                    <label>Kandungan Gizi</label>
                    <textarea name="gizi" cols="30" rows="10" class="form-control"></textarea>
                </div>

                <div class="form-grup">
                    <label>Gambar</label>
                    <input type="file" name="gambar" class="form-control">
                </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
      <?php echo form_close(); ?>        
    </div>
  </div>
</div>