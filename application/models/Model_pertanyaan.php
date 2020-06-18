<?php 

defined('BASEPATH') OR exit('No direct script access allowed');
                        
class Model_pertanyaan extends CI_Model {
                        
public function tampil_pertanyaan(){
        return $this->db->get('tabel_pertanyaan');                          
  }
  public function tambah_pertanyaan($data,$table)
  {
        $this->db->insert($table,$data);
  }
  public function edit_pertanyaan($where,$table)
  {
        return $this->db->get_where($table,$where);
  }
  public function update_pertanyaan($where,$data,$table)
  {
        $this->db->where($where);
        $this->db->update($table,$data);
  }
  public function hapus_pertanyaan($where,$table)
  {
        $this->db->where($where);
        $this->db->delete($table);
  }                      
                            
                        
}
                        
/* End of file model_pertanyaan.php */
    
                        