<?php 
        
defined('BASEPATH') OR exit('No direct script access allowed');
        
class Daftar_api extends CI_Controller {

public function index()
{
    $this->load->view('template/header');
    $this->load->view('template/sidebar');
    $this->load->view('form_daftarAPI');               
    $this->load->view('template/footer');            
}
public function aksi_daftarAPI()
    {
        $nama = $this->input->post('nama');
        $auth = $this->input->post('auth');

        $dataInput = array(
            'nama' => $nama,
            'auth' => $auth
        );

        $this->Model_barang->tambah_barang($dataInput,'user_api');
        redirect('Welcome');
    }
        
}
        
    /* End of file  daftar_api.php */
        
                            