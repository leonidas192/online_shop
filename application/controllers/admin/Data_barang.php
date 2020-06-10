<?php 
        
defined('BASEPATH') OR exit('No direct script access allowed');
        
class Data_barang extends CI_Controller {

public function index()
{
        $data['barang'] = $this->Model_barang->tampil_data()->result();
        $this->load->view('template_admin/header');
        $this->load->view('template_admin/sidebar');
        $this->load->view('admin/Data_barang',$data);
        $this->load->view('template_admin/footer');            
}
public function tambah_aksi()
{
    $nama_barang = $this->input->post('nama_barang');
    $keterangan = $this->input->post('keterangan');
    $kategori = $this->input->post('kategori');
    $harga = $this->input->post('harga');
    $stock = $this->input->post('stock');
    $gambar = $_FILES['gambar']['name'];
    if($gambar = ''){}else{
        $config['upload_path'] = './assets/img';
        $config['allowed_types'] = 'jpg|jpeg|png|gif';
        $this->load->library('upload',$config);
        if(!$this->upload->do_upload('gambar')){
            echo "Gambar Gagal Di Upload!";
        }
        else{
            $gambar = $this->upload->data('file_name');
        }
    }

    $data = array(
            'nama_barang' => $nama_barang,
            'keterangan' => $keterangan,
            'kategori' => $kategori, 
            'harga' => $harga,
            'stock' => $stock,
            'gambar' => $gambar
    );
    
    $this->Model_barang->tambah_barang($data,'tabel_barang');
    redirect('admin/Data_barang/index');
    

}
public function edit($id)
{
    $where = array('id' => $id);
    $data['barang'] = $this->Model_barang->edit_barang($where,'tabel_barang')->result();
    $this->load->view('template_admin/header');
    $this->load->view('template_admin/sidebar');
    $this->load->view('admin/edit_barang',$data);        
    $this->load->view('template_admin/footer');  
}
public function update()
{
    $id = $this->input->post('id');
    $nama_barang = $this->input->post('nama_barang');
    $keterangan = $this->input->post('keterangan');
    $kategori = $this->input->post('kategori');
    $harga = $this->input->post('harga');
    $stock = $this->input->post('stock');

    $data = array(
        'nama_barang' => $nama_barang,
        'keterangan' => $keterangan,
        'kategori' => $kategori,
        'harga' => $harga,
        'stock' => $stock 
    );
    $where = array(
        'id' => $id
    );

    $this->Model_barang->update_barang($where,$data,'tabel_barang');
    redirect('admin/Data_barang/index');
}
public function hapus($id)
{
    $where = array('id' => $id);
    $this->Model_barang->hapus_barang($where,'tabel_barang');
    redirect('admin/Data_barang/index'); 
}
public function detail($id)
{
        $data['barang'] = $this->Model_barang->detail_barang($id);
        $this->load->view('template_admin/header');
        $this->load->view('template_admin/sidebar');
        $this->load->view('admin/detail_barang',$data);        
        $this->load->view('template_admin/footer');    
}
        
}
        
    /* End of file  data_barang.php */
        
                            