<!DOCTYPE html>
<html lang="en">
<head>
   
    <title>Document</title>
</head>
<body>

<?php 
        foreach($datamu as $dt){
?>
<form action="<?php echo base_url()."index.php/index_qna/update_data"; ?>" method= "POST">
    No: <input type="text" name="no" readonly value="<?php echo $dt['no']; ?>"><br>
    User Name: <input type="text" name="username" value="<?php echo $dt['username']; ?>"><br>
    Pertanyaan: <input type="text" name="pertanyaan" value="<?php echo $dt['pertanyaan']; ?>"><br>
    Jawaban: <input type="text" name="jawaban" value="<?php echo $dt['jawaban']; ?>"><br>
    <input type="submit"><input type="reset">
</form>
        <?php } ?>
    
</body>
</html>