<?php 

defined('BASEPATH') OR exit('No direct script access allowed');
                        
class Model_keluhan extends CI_Model {
                        
  public function tampil_keluhan(){
        return $this->db->get('tabel_keluhan');                          
  }
  public function tambah_keluhan($data,$table)
  {
        $this->db->insert($table,$data);
  }
                        
                            
                        
}
                        
/* End of file model_keluhan.php */
    
                        