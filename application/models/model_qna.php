<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class model_qna extends CI_Model {
    /*public function getCashier()
    {
        $dataitu = $this->db->query("SELECT * FROM cashier");
        return $dataitu->result_array();
    }
    */

    public function getData($tabel){
        $semua = $this->db->get($tabel);
        return $semua->result_array();
    }

    public function masukan($tabel, $data){
        $semua = $this->db->insert($tabel, $data);
        return $semua;
    }

    public function perbarui($tabel, $data, $where){
        $semua = $this->db->update($tabel, $data, $where);
        return $semua;
    }

    public function hapus($tabel, $where){
        $semua = $this->db->delete($tabel, $where);
        return $semua;
        
    }

    public function get_khusus($tabel, $where){
        $semua = $this->db->get_where($tabel, $where);
        return $semua->result_array();
    }

	
}
?>
