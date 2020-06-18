<!DOCTYPE html>
<html lang="en">
<head>
   
    <title>Document</title>
    <link rel="stylesheet" type="text/css "href="style.css">
</head>
<body class="tampilan">
<center>
    <h2>FORUM DISKUSI TENTANG WEB INI</h2>
    <h3>JUAL BELI IKAN MENTAH</h3>
    

  

    <table class="table1" >
    
        
        <?php 
                foreach($datamu as $dt){
        ?>


        <tr>
                    <td></td>
                    <td></td>
        
        </tr>
        <tr>
                    <td>User Name:  </td>
                    <td><?php echo $dt['username']; ?></td>
        
        </tr>
        <tr>
                    <td>Pertanyaan: </td>
                    <td><?php echo $dt['pertanyaan']; ?></td>
        
        </tr>
        <tr>
                    <td>Jawaban: </td>
                    <td><?php echo $dt['jawaban']; ?></td>
        
        </tr>
        <tr>
                    <th>Aksi</th>
                    <td>
                        <a href="<?php echo base_url()."index.php/index_qna/hapus_data/". $dt['no']; ?>">Hapus</a> | 
                        <a href="<?php echo base_url()."index.php/index_qna/ambil_datawhere/". $dt['no']; ?>">Edit</a>
                    </td>
        
        </tr>
        <tr> <tr> <tr> </tr></tr></tr>

        
                <?php } ?>


       
        
    </table>
    <a href="<?php echo base_url()."index.php/index_qna/baca_form"; ?>">Saya Ingin Bertanya</a><br><br>
    </center>
    
   
</body>
</html>

