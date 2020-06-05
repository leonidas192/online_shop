using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Basis_data
{
    #region Mahasiswa
    public class Mahasiswa
    {
        #region Member Variables
        protected string _NIM;
        protected string _nama;
        protected string _alamat;
        protected string _kota;
        protected string _Aksi;
        #endregion
        #region Constructors
        public Mahasiswa() { }
        public Mahasiswa(string NIM, string nama, string alamat, string kota, string Aksi)
        {
            this._NIM=NIM;
            this._nama=nama;
            this._alamat=alamat;
            this._kota=kota;
            this._Aksi=Aksi;
        }
        #endregion
        #region Public Properties
        public virtual string NIM
        {
            get {return _NIM;}
            set {_NIM=value;}
        }
        public virtual string Nama
        {
            get {return _nama;}
            set {_nama=value;}
        }
        public virtual string Alamat
        {
            get {return _alamat;}
            set {_alamat=value;}
        }
        public virtual string Kota
        {
            get {return _kota;}
            set {_kota=value;}
        }
        public virtual string Aksi
        {
            get {return _Aksi;}
            set {_Aksi=value;}
        }
        #endregion
    }
    #endregion
}