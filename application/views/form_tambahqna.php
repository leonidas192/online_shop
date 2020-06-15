<!DOCTYPE html>
<html lang="en">
<head>
   
    <title>Document</title>
</head>
<body>
<h2>Silahkan Bertanya dengan Bijak</h2>

<table>
<form action="<?php echo base_url()."index.php/index_qna/tambah_data"; ?>" method= "POST">
<tr>
    <td>User Name:</td>
    <td><input type="text" name="username"><br></td> 
</tr>
<tr>
    <td>Pertanyaan:</td>
    <td><input type="text" name="pertanyaan"><br></td>
</tr>
<tr>
    <td>Jawaban:</td>
    <td><input type="text" name="jawaban"><br></td>
</tr>
<tr>
    <td></td>
    <td><input type="submit"><input type="reset"></td>
</tr>

    
   
    
    
</form></table>

    
</body>
</html>