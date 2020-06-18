<div class="container-fluid">
    <button class="btn btn-sm btn-primary mb-3" data-toggle="modal" data-target="#tambah_pertanyaan"><i class="fas fa-plus fa-sm"></i>Tambah Barang</button>

    <table class="table table-bordered">
        <tr>
            <th>NO</th>
            <th>Pertanyaan</th>
            <th>Jawaban</th>
            <th colspan="3">AKSI</th>
        </tr>

        <?php 
            $no=1;
            foreach($pertanyaan as $i) : ?>
            
            <tr>
                <td><?php echo $no++ ?></td>
                <td><?php echo $i->pertanyaan ?></td>
                <td><?php echo $i->jawaban ?></td>
                <td><?php echo anchor('admin/Data_pertanyaan/edit/'.$i->id,'<div class ="btn btn-primary btn-sm"><i class ="fas fa-edit"></i></div>') ?></td>
                <td><?php echo anchor('admin/Data_pertanyaan/hapus/'.$i->id,'<div class ="btn btn-danger btn-sm"><i class ="fas fa-trash"></i></div>') ?></td>
            </tr>

            <?php endforeach; ?>
    </table>
</div>
<!-- Modal -->
<div class="modal fade" id="tambah_pertanyaan" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">Info Q&A</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url().'admin/Data_pertanyaan/tambah_aksi';?>"method="post" enctype="multipart/form-data">

                <div class="form-grup">
                    <label>Pertanyaan</label>
                    <input type="text" name="pertanyaan" class="form-control">
                </div>

                <div class="form-grup">
                    <label>Jawaban</label>
                    <input type="text" name="jawaban" class="form-control">
                </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
      </form>         
    </div>
  </div>
</div>