<?php 
        
defined('BASEPATH') OR exit('No direct script access allowed');
        
class Invoice extends CI_Controller {

public function index()
{
     $data['invoice'] = $this->Model_invoice->tampil_data();
     $this->load->view('template_admin/header');
     $this->load->view('template_admin/sidebar');
     $this->load->view('admin/invoice',$data);
     $this->load->view('template_admin/footer');           
}
public function detail($id_invoice)
{
     $data['invoice'] = $this->Model_invoice->get_id_invoice($id_invoice);
     $data['pesanan'] = $this->Model_invoice->get_id_pesanan($id_invoice);
     $this->load->view('template_admin/header');
     $this->load->view('template_admin/sidebar');
     $this->load->view('admin/detail_invoice',$data);
     $this->load->view('template_admin/footer');           
}
        
}
        
    /* End of file  invoice.php */
        
                            