
//Thư viện cần quản lý việc mượn, trả sách. Sinh viên đăng ký tham gia mượn sách thông qua thẻ mà thư viện cung cấp.
//Với mỗi thẻ sẽ lưu các thông tin sau: Mã phiếu mượn, ngày mượn(kiểu Int), hạn trả, số hiệu sách, và các thông tin cá nhân của sinh viên mượn sách. Các thông tin của sinh viên mượn sách bao gồm: Họ tên, tuổi, lớp.
//Yêu cầu 1: Xây dựng lớp SinhVien để quản lý thông tin của mỗi sinh viên.
//Yêu cầu 2: Xây dựng lớp TheMuon để quản lý việc mượn trả sách của các sinh viên.
//Yêu cầu 3: Xây dựng lớp QuanLy có các phương thức: Thêm, xoá theo mã phiếu mượn và hiển thị thông tin các thẻ mượn.

class SinhVien {
    var hoTen: String
    var tuoi: Int
    var lop: String
    var maPhieuMuon: Int

    init(hoTen: String, tuoi: Int, lop: String, maPhieuMuon: Int) {
        self.hoTen = hoTen
        self.tuoi = tuoi
        self.lop = lop
        self.maPhieuMuon = maPhieuMuon
    }
}

class TheMuon {
    var ngayMuon: Int
    var hanTra: Int
    var soHieuSach: Int
    
    init(ngayMuon: Int, hanTra: Int, soHieuSach: Int) {
        self.ngayMuon = ngayMuon
        self.hanTra = hanTra
        self.soHieuSach = soHieuSach
    }
}

var tatCaSinhVien: [SinhVien] = []
var tatCaTheMuon: [TheMuon] = []
class QuanLy {
    class func themMuonSach(nguoiMuon: SinhVien) {
        let sinhVien = SinhVien(hoTen: nguoiMuon.hoTen, tuoi: nguoiMuon.tuoi, lop: nguoiMuon.lop, maPhieuMuon: nguoiMuon.maPhieuMuon)
        tatCaSinhVien.append(sinhVien)
    }

    class func xoaSinhVien(maPhieuMuon: Int) {
        for (i,value) in tatCaSinhVien.enumerated() {
            if value.maPhieuMuon == maPhieuMuon {
                tatCaSinhVien.remove(at:i)
            }
        }
    }

    class func thongTinTheMuon(theMuon: TheMuon) {
        let theMuonSinhVien = TheMuon(ngayMuon: theMuon.ngayMuon, hanTra: theMuon.hanTra, soHieuSach: theMuon.soHieuSach)
        tatCaTheMuon.append(theMuonSinhVien)
    }
}

QuanLy.themMuonSach(nguoiMuon: SinhVien(hoTen: "A", tuoi: 12, lop: "5A", maPhieuMuon: 1))
QuanLy.themMuonSach(nguoiMuon: SinhVien(hoTen: "C", tuoi: 10, lop: "3E", maPhieuMuon: 2))
QuanLy.xoaSinhVien(maPhieuMuon:2)
print(dump(tatCaSinhVien))
QuanLy.thongTinTheMuon(theMuon: TheMuon(ngayMuon: 1102022, hanTra: 3102022, soHieuSach: 11))
QuanLy.thongTinTheMuon(theMuon: TheMuon(ngayMuon: 1092022, hanTra: 2102022, soHieuSach: 71))
print(dump(tatCaTheMuon))
