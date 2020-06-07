<?php 
        
defined('BASEPATH') OR exit('No direct script access allowed');
        
class Dashboard extends CI_Controller {

public function index()
{
        $data['barang'] = $this->Model_barang->tampil_data()->result();
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $this->load->view('dashboard',$data);               
        $this->load->view('template/footer');
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
        redirect('dashboard');
}
public function detail_keranjang()
{
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $this->load->view('keranjang');               
        $this->load->view('template/footer');
}

        
}
        
    /* End of file  dashboard.php */
        
                            