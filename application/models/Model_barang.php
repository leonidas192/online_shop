<?php 

defined('BASEPATH') OR exit('No direct script access allowed');
                        
class Model_barang extends CI_Model {
                        
public function tampil_data(){
      return $this->db->get('tabel_barang');                          
}
public function tambah_barang($data,$table)
{
      $this->db->insert($table,$data);
}
public function edit_barang($where,$table)
{
      return $this->db->get_where($table,$where);
}
public function update_barang($where,$data,$table)
{
      $this->db->where($where);
      $this->db->update($table,$data);
}
public function hapus_barang($where,$table)
{
      $this->db->where($where);
      $this->db->delete($table);
}
                                                    
}
                        
/* End of file model_barang.php */
    
                        