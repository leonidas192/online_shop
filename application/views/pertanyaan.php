<?php foreach($pertanyaan as $i) : ?>
<div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        <td><?php echo $i->pertanyaan ?></td>
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
      <td><?php echo $i->jawaban ?></td>
      </div>
    </div>
  </div>
</div>
<?php endforeach; ?><br><br>
<h4>Jika Ada pertanyaan atau keluhan bisa ditulis disini</h4>
<form action="<?php echo base_url()?>Pertanyaan/tambah_keluhan" method="post">
    <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" class="form-control" placeholder="Masukkan Email">
    </div>
    <div class="form-group">
        <label>Pertanyaan</label>
        <input type="text" name="pertanyaan" class="form-control" placeholder="Masukkan Pertanyaan">
    </div>
    <button type="submit" class="btn btn-primary mb-3">Kirim</button>
</form>