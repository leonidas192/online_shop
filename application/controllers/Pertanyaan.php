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
        
}
        
    /* End of file  pertanyaan.php */
        
                            