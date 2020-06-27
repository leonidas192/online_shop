<?php 

defined('BASEPATH') OR exit('No direct script access allowed');
                        
class Model_barang extends CI_Model {
                        
public function tampil_data(){
      return $this->db->get('tabel_barang');                          
}
public function getData_Khusus($tabel,$where)
    {
        $sarung = $this->db->get_where($tabel,$where);
        return $sarung->result_array();
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
public function find($id)
{
      $result = $this->db->where('id',$id)
                         ->limit(1)
                         ->get('tabel_barang');
      if($result->num_rows() > 0){
            return $result->row();
      }else{
            return array();
      }
}
public function detail_barang($id)
{
      $result = $this->db->where('id',$id)->get('tabel_barang');
      if($result->num_rows() > 0){
            return $result->result();
      }else{
            return false;
      }
}


}
                        
/* End of file model_barang.php */
    
                        