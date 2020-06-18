<?php 
        
defined('BASEPATH') OR exit('No direct script access allowed');
        
class Data_pertanyaan extends CI_Controller {
    public function __construct(){
        parent::__construct();
        if($this->session->userdata('hak_akses') != 1){
            $this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
            Anda Belum Login!!
           <button type="button" class="close" data-dismiss="alert" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>');
         redirect('auth/login');
        }
    }
public function index()
{
        $data['pertanyaan'] = $this->Model_pertanyaan->tampil_pertanyaan()->result();
        $this->load->view('template_admin/header');
        $this->load->view('template_admin/sidebar');
        $this->load->view('admin/Data_pertanyaan',$data);
        $this->load->view('template_admin/footer');
    
}
public function tambah_aksi()
{
    $pertanyaan = $this->input->post('pertanyaan');
    $jawaban = $this->input->post('jawaban');
    $data = array(
        'pertanyaan' => $pertanyaan,
        'jawaban' => $jawaban
    );
    $this->Model_pertanyaan->tambah_pertanyaan($data,'tabel_pertanyaan');
    redirect('admin/Data_pertanyaan/index');
}
public function edit($id)
{
   $where =  array('id' => $id);
   $data['pertanyaan'] = $this->Model_pertanyaan->edit_pertanyaan($where,'tabel_pertanyaan')->result();
   $this->load->view('template_admin/header');
   $this->load->view('template_admin/sidebar');
   $this->load->view('admin/edit_pertanyaan', $data);
   $this->load->view('template_admin/footer');
}
public function update()
{
    $id = $this->input->post('id');
    $pertanyaan = $this->input->post('pertanyaan');
    $jawaban = $this->input->post('jawaban');

    $data = array(
        'pertanyaan' => $pertanyaan,
        'jawaban' => $jawaban,
    );

    $where = array(
        'id' => $id,
    );
    $this->Model_pertanyaan->update_pertanyaan($where,$data,'tabel_pertanyaan');
    redirect('admin/Data_pertanyaan/index');
    
}
public function hapus($id)
{
    $where = array('id' => $id);
    $this->Model_pertanyaan->hapus_pertanyaan($where,'tabel_pertanyaan');
    redirect('admin/Data_pertanyaan/index'); 
}
        
}
        
    /* End of file  data_pertanyaan.php */
        
                            