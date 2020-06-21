<div class="container-fluid">

    <table class="table table-bordered">
        <tr>
            <th>NO</th>
            <th>EMAIL</th>
            <th>KELUHAN</th>
        </tr>

        <?php 
            $no=1;
            foreach($keluhan as $i) : ?>
            
            <tr>
                <td><?php echo $no++ ?></td>
                <td><?php echo $i->email ?></td>
                <td><?php echo $i->pertanyaan ?></td>
            </tr>

            <?php endforeach; ?>
    </table>
</div>