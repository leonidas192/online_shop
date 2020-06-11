<?php 
        
defined('BASEPATH') OR exit('No direct script access allowed');
        
class auth extends CI_Controller {

public function login()
{
    $this->form_validation->set_rules('username','Username','required',
      ['required' => 'username wajib diisi'
      ]);
    $this->form_validation->set_rules('password','Password','required',
    ['required' => 'password wajib diisi'
    ]);
    if($this->form_validation->run() == FALSE)
    {
       $this->load->view('template/header');
       $this->load->view('form_login');
       $this->load->view('template/footer');
   }else{
       $auth = $this->Model_auth->cek_login();
       if($auth == FALSE)
       {
           $this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
            Username atau Password anda salah!!
           <button type="button" class="close" data-dismiss="alert" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>');
         redirect('Auth/login'); 
       }else{
           $this->session->set_userdata('username',$auth->username);
           $this->session->set_userdata('hak_akses',$auth->hak_akses);

           switch($auth->hak_akses){
            case 1: redirect('admin/dashboard_admin');
                    break;
            case 2: redirect('welcome');
                    break;
            default : break;
           }

       }
   }             
}
public function logout()
{
    $this->session->sess_destroy();
    redirect('auth/login');
    
}
        
}
        
    /* End of file  auth.php */
        
                            