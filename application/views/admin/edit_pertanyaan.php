<div class="container fluid">
    <h3><i class = "fas fa-edit"></i>EDIT DATA BARANG</h3>
    <?php foreach($pertanyaan as $i) : ?>
        <form action="<?php echo base_url().'admin/Data_pertanyaan/update'?>" method="post">
            <div class="for-group">
                <label>Pertanyaan</label>
                <input type="text" name="pertanyaan" class="form-control" value="<?php echo $i->pertanyaan ?>">
            </div>
            <div class="for-group">
                <label>Jawaban</label>
                <input type="hidden" name="id" class="form-control" value="<?php echo $i->id ?>">
                <input type="text" name="jawaban" class="form-control" value="<?php echo $i->jawaban ?>">
            </div>
            <button type="submit" class="btn btn-primary btn-sm">SIMPAN</button>

        </form>
    <?php endforeach; ?>   
</div>