
//Để quản lý khách hàng đến thuê phòng của một khách sạn, người ta cần các thông tin sau: Số ngày thuê, loại phòng, thông tin cá nhân của những người thuê phòng.
//Biết rằng phòng loại A có giá 500$, phòng loại B có giá 300$ và loại C có giá 100$.
//
//Với mỗi cá nhân cần quản lý các thông tin sau: Họ tên, tuổi, số chứng minh nhân dân.
//
//Yêu cầu 1: Hãy xây dựng lớp Nguoi để quản lý thông tin cá nhân của những người thuê phòng.
//
//Yêu cầu 2: Xây dựng lớp KhachSan để quản lý các thông tin về các phòng trong khác sạn.
//
//Yêu cầu 3: Xây dựng các phương thức thêm mới, xoá khách theo số chứng minh nhân dân. Tính tiền thuê phòng cho khách(xác định khách bằng số chứng minh nhân dân) dựa vào công thức: (số ngày thuê * giá của từng loại phòng)

enum LoaiPhong: Int {
    case loaiA = 100
    case loaiB = 300
    case loaiC = 500
}

class Nguoi {
    var hoTen: String
    var tuoi: Int
    var soCMND: Int
    var soNgayThue: Int
    var loaiPhong: LoaiPhong
    
    init(hoTen: String, tuoi: Int, soCMND: Int, soNgayThue: Int, loaiPhong: LoaiPhong) {
        self.hoTen = hoTen
        self.tuoi = tuoi
        self.soCMND = soCMND
        self.soNgayThue = soNgayThue
        self.loaiPhong = loaiPhong
    }
}

var tongKhachHang : [Nguoi] = []
class QuanLyKhachHang {
    static func themKhachHang(nguoi: Nguoi) {
        let khach = Nguoi(hoTen: nguoi.hoTen, tuoi: nguoi.tuoi, soCMND: nguoi.soCMND, soNgayThue: nguoi.soNgayThue, loaiPhong: nguoi.loaiPhong)
        tongKhachHang.append(khach)
    }
    
    static func xoaKhachHang(soCMND: Int) {
        for (i, value) in tongKhachHang.enumerated() {
            if value.soCMND == soCMND {
                tongKhachHang.remove(at: i)
            }
        }
    }
    
    static func tinhTienThuePhong(soCMND: Int) -> Int {
        var tien = 0
        for i in tongKhachHang {
            if i.soCMND == soCMND {
                tien = i.soNgayThue * i.loaiPhong.rawValue
            }
        }
        return tien
    }
}

QuanLyKhachHang.themKhachHang(nguoi: Nguoi(hoTen: "Le", tuoi: 17, soCMND: 10, soNgayThue: 2, loaiPhong: .loaiC))
QuanLyKhachHang.themKhachHang(nguoi: Nguoi(hoTen: "Lan", tuoi: 13, soCMND: 5, soNgayThue: 1, loaiPhong: .loaiA))
print(dump(tongKhachHang))
QuanLyKhachHang.xoaKhachHang(soCMND: 10)
QuanLyKhachHang.tinhTienThuePhong(soCMND: 10)
