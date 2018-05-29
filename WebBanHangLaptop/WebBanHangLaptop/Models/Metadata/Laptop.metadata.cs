using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using thêm 2 thư viện
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
namespace WebBanHangLaptop.Models
{
    [MetadataTypeAttribute(typeof(LaptopMetadata))]

    public partial class Laptop
    {
        internal sealed class LaptopMetadata
        {
            [Display(Name = "Mã Latop")]//Thuộc tính Display dùng để đặt tên lại cho cột
            public int MaLaptop { get; set;  }
            [Display(Name = "Tên Laptop")]//Thuộc tính Display dùng để đặt tên lại cho cột
            [Required(ErrorMessage = "Vui lòng nhập dữ liệu cho trường này.")] //Kiểm tra rổng
            public string TenLaptop { get; set; }
            [Display(Name = "Giá bán")]//Thuộc tính Display dùng để đặt tên lại cho cột
            public Nullable<double> GiaBan { get; set; }
            [Display(Name = "Giá gốc")]//Thuộc tính Display dùng để đặt tên lại cho cột
            public Nullable<double> GiaGoc { get; set; }
            [Display(Name = "Mô tả")]//Thuộc tính Display dùng để đặt tên lại cho cột
            [Required(ErrorMessage = "Vui lòng nhập dữ liệu cho trường này.")] //Kiểm tra rổng
            public string MoTa { get; set; }
            [DataType(DataType.Date)]
            [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]//Định dạng ngày 
            [Display(Name = "Ngày cập nhật")]//Thuộc tính Display dùng để đặt tên lại cho cột
            [Required(ErrorMessage = "Vui lòng nhập dữ liệu cho trường này.")] //Kiểm tra rổng
            public Nullable<System.DateTime> NgayCapNhat { get; set; }
            [Display(Name = "Ảnh bìa")]//Thuộc tính Display dùng để đặt tên lại cho cột
            public string AnhBia { get; set; }
            [Display(Name = "Số lượng tồn")]//Thuộc tính Display dùng để đặt tên lại cho cột
            [Required(ErrorMessage = "Vui lòng nhập dữ liệu cho trường này.")] //Kiểm tra rổng
            public Nullable<int> SoLuongTon { get; set; }
            [Display(Name = "Nhà cung cấp")]//Thuộc tính Display dùng để đặt tên lại cho cột
            public Nullable<int> MaNCC { get; set; }
            public Nullable<int> Moi { get; set; }
            public Nullable<int> MaLoai { get; set; }
            public string ChiTietLaptop { get; set; }
            
            //public Nullable<int> MaNXB { get; set; }
            //[Display(Name = "Mới")]//Thuộc tính Display dùng để đặt tên lại cho cột
            //[Required(ErrorMessage = "Vui lòng nhập dữ liệu cho trường này.")] //Kiểm tra rổng
            //public Nullable<int> Moi { get; set; }
        }

    }
}