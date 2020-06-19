<?php 

defined('BASEPATH') OR exit('No direct script access allowed');
                        
class Model_masakan extends CI_Model {
                        
  public function tampil_masakan(){
        return $this->db->get('tabel_masakan');                          
  }
  public function tambah_masakan($data,$table)
  {
        $this->db->insert($table,$data);
  }
  public function edit_masakan($where,$table)
  {
        return $this->db->get_where($table,$where);
  }
  public function update_masakan($where,$data,$table)
  {
        $this->db->where($where);
        $this->db->update($table,$data);
  }
  public function hapus_masakan($where,$table)
  {
        $this->db->where($where);
        $this->db->delete($table);
  }    
  public function detail_masakan($id)
{
      $result = $this->db->where('id',$id)->get('tabel_masakan');
      if($result->num_rows() > 0){
            return $result->result();
      }else{
            return false;
      }
}                      
                            
                        
}
                        
/* End of file model_masakan.php */
    
                        