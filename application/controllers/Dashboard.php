<?php 
        
defined('BASEPATH') OR exit('No direct script access allowed');
        
class Dashboard extends CI_Controller {
        public function __construct(){
                parent::__construct();
                if($this->session->userdata('hak_akses') != 2){
                    $this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
                    Anda Belum Login!!
                   <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                   </button>
                 </div>');
                 redirect('auth/login');
                }
            }


public function tambah_ke_keranjang($id)
{
        $barang = $this->Model_barang->find($id);
        $data = array(
                'id' => $barang->id,
                'qty' => 1,
                'price' => $barang->harga,
                'name' => $barang->nama_barang
        );
        $this->cart->insert($data);
        redirect('Welcome');
}
public function detail_keranjang()
{
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $this->load->view('keranjang');               
        $this->load->view('template/footer');
}
public function hapus_keranjang()
{
        $this->cart->destroy();
        redirect('Welcome/index');
}
public function pembayaran()
{
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $this->load->view('pembayaran');               
        $this->load->view('template/footer');
}
public function proses_pesanan()
{
        $is_prosessed = $this->Model_invoice->index();
        if($is_prosessed){
                $this->cart->destroy();
                $this->load->view('template/header');
                $this->load->view('template/sidebar');
                $this->load->view('proses_pesanan');               
                $this->load->view('template/footer');   
        }else{
                echo "Maaf,Pesanan Anda Gagal Diproses!";
        }

}
public function detail($id)
{
        $data['barang'] = $this->Model_barang->detail_barang($id);
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $this->load->view('detail_barang',$data);               
        $this->load->view('template/footer');  
}
public function masakan()
{
        $data['masakan'] = $this->Model_masakan->tampil_masakan()->result();
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $this->load->view('masakan',$data);               
        $this->load->view('template/footer');
}

public function detail_masakan($id)
{
        $data['masakan'] = $this->Model_masakan->detail_masakan($id);
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $this->load->view('detail_masakan',$data);               
        $this->load->view('template/footer');
}
        
}
        
    /* End of file  dashboard.php */
        
                            