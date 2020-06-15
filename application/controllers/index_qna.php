<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class index_qna extends CI_Controller {

	public function index()
	{
		//$this->load->view('welcome_message');
		//echo "Halo Dunia";
		//$dataini = $this->db->query("SELECT * FROM produk");
		//foreach($dataini->result_array() as $produk)
		//{
			//echo "Nama : ".$produk['nama']."<br>";
			//echo "Jumlah : ".$produk['jumlah']."<br>";
			//echo "Harga : ".$produk['harga']."<br>"."<br>";
		//}

		/*$this->load->model('model_cashier');
		$dataCashier = $this->model_cashier->getCashier();
		//$data2 = array(
		//	'nama' => $nama
		//);

		$data3 = array(
			'data' => $dataCashier
		);
		$this->load->view('data_cashier', $data3);
		*/
		$this->load->model('model_qna');
		$datacashier = $this->model_qna->getData("tabel_qna");
		$data=array(
			"datamu" => $datacashier
		);
		$this->load->view("qna", $data);
	}

	public function baca_form(){
		$this->load->view('form_tambahqna');
	}
	public function tambah_data(){
		$this->load->model('model_qna');
		$datainputan=array(
			'username'=>$this->input->post('username'),
			'pertanyaan'=>$this->input->post('pertanyaan'),
			'jawaban'=>$this->input->post('jawaban')
			
		);
		$this->model_qna->masukan('tabel_qna', $datainputan);
		redirect(base_url(), 'refresh');
	}

	public function hapus_data($penunjuk){
		$datapenunjuk = array(
			'no'=>$penunjuk
		);
		$this->load->model('model_qna');
		$this->model_qna->hapus('tabel_qna', $datapenunjuk);
		redirect(base_url(), 'refresh');
	}

	public function ambil_datawhere($penunjuk){
		$datapenunjuk = array(
			'no'=>$penunjuk
		);
		$this->load->model('model_qna');
		$datacashier = $this->model_qna->get_khusus("tabel_qna", $datapenunjuk);
		$data=array(
			"datamu" => $datacashier
		);
		$this->load->view("form_editqna", $data);
	}

	public function update_data (){
		$datainputan=array(
			'username'=>$this->input->post('username'),
			'pertanyaan'=>$this->input->post('pertanyaan'),
			'jawaban'=>$this->input->post('jawaban')
			
		);
		$datapenunjuk = array(
			'no'=>$this->input->post('no'),
		);
		$this->load->model('model_qna');
		$datacashier = $this->model_qna->perbarui("tabel_qna", $datainputan, $datapenunjuk);
		redirect(base_url(), 'refresh');
	}

	
}
?>