﻿using Do_an.Class;
using Microsoft.Win32;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Data.SqlClient;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Do_an
{
    /// <summary>
    /// Interaction logic for ThemSP_Window.xaml
    /// </summary>
    public partial class ThemSP_Window : Window
    {
        SanPham_DAO SanPham = new SanPham_DAO();
        public ThemSP_Window()
        {
            InitializeComponent();
        }
        List<string> DanhMuc = new List<string> { "Điện thọai", "Đồ gia dụng", "Xe cộ", "Đồ điện tử", "Thời trang", "Thể thao" };
        private void btnThoat_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Image_Button(object sender, RoutedEventArgs e)
        {
            Microsoft.Win32.OpenFileDialog openFileDialog = new Microsoft.Win32.OpenFileDialog();
            openFileDialog.Filter = "Image files (*.jpg, *.jpeg, *.png) | *.jpg; *.jpeg; *.png";
            if (openFileDialog.ShowDialog() == true)
            {
                string filePath = openFileDialog.FileName;
                string fileName = System.IO.Path.GetFileName(filePath);

               
                string directoryName = new System.IO.DirectoryInfo(filePath).Parent.Name;

                string shortFile= directoryName + "/" + fileName;
               // MessageBox.Show(shortFile);

                BitmapImage bitmap = new BitmapImage();
                bitmap.BeginInit();
                bitmap.UriSource = new Uri(filePath, UriKind.RelativeOrAbsolute);
                bitmap.EndInit();
                imgHinhAnh.Source = bitmap;
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            cbDanhMuc.ItemsSource = DanhMuc;
            //txtTenShop.Text=PhanQuyen.taikhoan.ToString();
        }

     
        private void btnThem_Click_1(object sender, RoutedEventArgs e)
        {
            SanPham sanPhamMoi = new SanPham();
            sanPhamMoi.DanhMucSP = cbDanhMuc.Text;
            sanPhamMoi.MaSP = txtMaSP.Text;
            sanPhamMoi.TenSP = txtTenSP.Text;
            sanPhamMoi.TenShop = PhanQuyen.taikhoan;
            sanPhamMoi.TinhTrang = txtTinhTrang.Text;
            sanPhamMoi.GiaGoc = float.Parse(txtGiaGoc.Text);
            sanPhamMoi.GiaHTai = float.Parse(txtGiaBan.Text);
            sanPhamMoi.NgayMua = dtpNgayMua.Text;
            sanPhamMoi.MoTa = txtMoTa.Text;
            sanPhamMoi.HinhAnh = imgHinhAnh.Source.ToString();
            string query = "insert into SanPham values (@MaSP,@TenSP,@TenShop,@GiaGoc,@GiaHTai,@NgayMua,@TinhTrang,@MoTa,@HinhAnh,@DanhMucSP)";
            SanPham.them(sanPhamMoi, query);

            string query2 = "insert into SP_Ban values (@MaSP,@TaiKhoan)";
            try
            {
                Database database = new Database();
                SqlConnection sqlConnection = database.getConnection();
                using (SqlConnection connection = new SqlConnection(database.conStr))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query2, connection))
                    {
                        command.Parameters.AddWithValue("@MaSP", txtMaSP.Text);
                        command.Parameters.AddWithValue("@TaiKhoan", PhanQuyen.taikhoan);
                        command.ExecuteNonQuery();
                    }
                }   
            }
            catch (Exception Fail)
            {
                MessageBox.Show(Fail.Message);
            }
            MessageBox.Show("Thêm sản phẩm thành công");
            Close();
        }

        private void btnChinhSua(object sender, RoutedEventArgs e)
        {
            SanPham_DAO sanPham_DAO = new SanPham_DAO();
            string query = "update SanPham set TenSP=@TenSP, TenShop=@TenShop,GiaGoc=@GiaGoc,GiaHTai=@GiaHTai," +
                "NgayMua=@NgayMua,TinhTrang=@TinhTrang,MoTa=@MoTa,HinhAnh=@HinhAnh, DanhMucSP=@DanhMucSP where MaSP=@MaSP";  
            SanPham sanPham = new SanPham(txtMaSP.Text,txtTenSP.Text,PhanQuyen.taikhoan,float.Parse(txtGiaGoc.Text),float.Parse(txtGiaBan.Text),dtpNgayMua.Text,txtTinhTrang.Text,txtMoTa.Text,imgHinhAnh.Source.ToString(),cbDanhMuc.Text);
            sanPham_DAO.sua(sanPham,query);
        }
    }
}