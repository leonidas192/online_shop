<?php 
        
defined('BASEPATH') OR exit('No direct script access allowed');
        
class Kategori extends CI_Controller {

public function laut()
{
   $data['laut'] = $this->Model_kategori->data_laut()->result();
   $this->load->view('template/header');
   $this->load->view('template/sidebar');
   $this->load->view('laut',$data);
   $this->load->view('template/footer');
}
public function tawar()
{
   $data['tawar'] = $this->Model_kategori->data_tawar()->result();
   $this->load->view('template/header');
   $this->load->view('template/sidebar');
   $this->load->view('tawar',$data);
   $this->load->view('template/footer');
}
public function hias()
{
   $data['hias'] = $this->Model_kategori->data_hias()->result();
   $this->load->view('template/header');
   $this->load->view('template/sidebar');
   $this->load->view('hias',$data);
   $this->load->view('template/footer');
}



        
}
        
    /* End of file  kategori.php */
        
                            