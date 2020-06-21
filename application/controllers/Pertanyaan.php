<?php 
        
defined('BASEPATH') OR exit('No direct script access allowed');
        
class Pertanyaan extends CI_Controller {

    public function index()
    {
            $data['pertanyaan'] = $this->Model_pertanyaan->tampil_pertanyaan()->result();
            $this->load->view('template/header');
            $this->load->view('template/sidebar');
            $this->load->view('pertanyaan',$data);               
            $this->load->view('template/footer');
    }
    public function tambah_keluhan()
    {
            $email = $this->input->post('email');
            $pertanyaan = $this->input->post('pertanyaan');
            $data = array(
            'email' => $email, 
            'pertanyaan' => $pertanyaan
    );
    $this->Model_keluhan->tambah_keluhan($data,'tabel_keluhan');
    redirect('Pertanyaan/index');   
    }
    
        
}
        
    /* End of file  pertanyaan.php */
        
                            