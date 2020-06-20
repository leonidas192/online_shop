<?php 
        
defined('BASEPATH') OR exit('No direct script access allowed');
        
class Data_masakan extends CI_Controller {
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
        $data['masakan'] = $this->Model_masakan->tampil_masakan()->result();
        $this->load->view('template_admin/header');
        $this->load->view('template_admin/sidebar');
        $this->load->view('admin/Data_masakan',$data);
        $this->load->view('template_admin/footer');
    
}
public function tambah_aksi()
{
    $nama = $this->input->post('nama');
    $bahan = $this->input->post('bahan');
    $langkah = $this->input->post('langkah');
    $gambar = $_FILES['gambar'];
    if($gambar = ''){}else{
        $config['upload_path'] = './assets/img';
        $config['allowed_types'] = 'jpg|jpeg|png|gif';
        $this->upload->initialize($config);
        if(!$this->upload->do_upload('gambar')){
            echo "Gambar Gagal Di Upload!";die();
        }
        else{
            $gambar = $this->upload->data('file_name');
        }
    }
    $data = array(
        'nama' => $nama,
        'bahan' => $bahan,
        'langkah' => $langkah,
        'gambar' => $gambar
    );
    $this->Model_masakan->tambah_masakan($data,'tabel_masakan');
    redirect('admin/Data_masakan/index');
}
public function edit($id)
{
   $where =  array('id' => $id);
   $data['masakan'] = $this->Model_masakan->edit_masakan($where,'tabel_masakan')->result();
   $this->load->view('template_admin/header');
   $this->load->view('template_admin/sidebar');
   $this->load->view('admin/edit_masakan', $data);
   $this->load->view('template_admin/footer');
}
public function update()
{
    $id = $this->input->post('id');
    $nama = $this->input->post('nama');
    $bahan = $this->input->post('bahan');
    $langkah = $this->input->post('langkah');

    $data = array(
        'nama' => $nama,
        'bahan' => $bahan,
        'langkah' => $langkah,
    );

    $where = array(
        'id' => $id,
    );
    $this->Model_masakan->update_masakan($where,$data,'tabel_masakan');
    redirect('admin/Data_masakan/index');
    
}
public function hapus($id)
{
    $where = array('id' => $id);
    $this->Model_masakan->hapus_masakan($where,'tabel_masakan');
    redirect('admin/Data_masakan/index'); 
}
public function detail($id)
{
        $data['masakan'] = $this->Model_masakan->detail_masakan($id);
        $this->load->view('template_admin/header');
        $this->load->view('template_admin/sidebar');
        $this->load->view('admin/detail_masakan',$data);        
        $this->load->view('template_admin/footer');    
}
        
}
        
    /* End of file  data_masakan.php */
        
                            