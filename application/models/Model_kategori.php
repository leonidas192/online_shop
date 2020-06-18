<?php 

defined('BASEPATH') OR exit('No direct script access allowed');
                        
class Model_kategori extends CI_Model {
                        
public function data_laut(){
    return $this->db->get_where('tabel_barang',array('kategori' => 'Ikan Laut'));
    
}
public function data_tawar(){
    return $this->db->get_where('tabel_barang',array('kategori' => 'Ikan Tawar'));
    
}                       
public function data_hias(){
    return $this->db->get_where('tabel_barang',array('kategori' => 'Ikan Hias'));
<<<<<<< HEAD
}                                    
=======
    
}      
public function data_qna(){
    return $this->db->get_where('tabel_barang',array('kategori' => 'Q&A'));
    
}                                 
>>>>>>> efa41a1f7f481e4a1d3075aa4fbf6391e97603b7
                        
}
                        
/* End of file model_kategori.php */
    
                        