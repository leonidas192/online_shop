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
}
public function data_tipe()
{
    return $this->db->get_where('tabel_barang',array('tipe' => 'Populer Bulan Ini'));
}
                                    
                   
}
                        
/* End of file model_kategori.php */
    
                        