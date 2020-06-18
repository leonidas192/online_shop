<div class="container-fluid">
    <button class="btn btn-sm btn-primary mb-3" data-toggle="modal" data-target="#tambah_barang"><i class="fas fa-plus fa-sm"></i>Tambah Barang</button>

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