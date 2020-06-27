<?php 
        
defined('BASEPATH') OR exit('No direct script access allowed');
        
class Api extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Model_barang');
    }


    public function index()
    {
        $aksesClient = $this->input->get('kode');
        $penunjuk = array(
            'auth' => $aksesClient,
        );
        $cek = count($this->Model_barang->getData_Khusus('user_api',$penunjuk));
        if($cek > 0){
            $data['masakan'] = $this->Model_masakan->tampil_masakan()->result();
            $data['barang'] = $this->Model_barang->tampil_data()->result();
            echo json_encode($data);
        }else{
            echo "Anda tidak punya akses";
        }
        
    }
        
}
        
    /* End of file  api.php */
        
                            