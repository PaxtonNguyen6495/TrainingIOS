
//Thư viện cần quản lý việc mượn, trả sách. Sinh viên đăng ký tham gia mượn sách thông qua thẻ mà thư viện cung cấp.
//Với mỗi thẻ sẽ lưu các thông tin sau: Mã phiếu mượn, ngày mượn(kiểu Int), hạn trả, số hiệu sách, và các thông tin cá nhân của sinh viên mượn sách. Các thông tin của sinh viên mượn sách bao gồm: Họ tên, tuổi, lớp.
//Yêu cầu 1: Xây dựng lớp SinhVien để quản lý thông tin của mỗi sinh viên.
//Yêu cầu 2: Xây dựng lớp TheMuon để quản lý việc mượn trả sách của các sinh viên.
//Yêu cầu 3: Xây dựng lớp QuanLy có các phương thức: Thêm, xoá theo mã phiếu mượn và hiển thị thông tin các thẻ mượn.

class SinhVien {
    var hoTen: String
    var tuoi: Int
    var lop: String
    
    init(hoTen: String, tuoi: Int, lop: String) {
        self.hoTen = hoTen
        self.tuoi = tuoi
        self.lop = lop
    }
}

class TheMuon: SinhVien {
    var ngayMuon: Int
    var hanTra: Int
    var soHieuSach: Int
    var maPhieuMuon: Int
    
    init(sinhvien: SinhVien, ngayMuon: Int, hanTra: Int, soHieuSach: Int, maPhieuMuon: Int) {
        self.ngayMuon = ngayMuon
        self.hanTra = hanTra
        self.soHieuSach = soHieuSach
        self.maPhieuMuon = maPhieuMuon
        super.init(hoTen: sinhvien.hoTen, tuoi: sinhvien.tuoi, lop: sinhvien.lop)
    }
}

var tatCaTheMuon: [TheMuon] = []
class QuanLy {
    class func themLuotMuonSach(theMuon: TheMuon) {
        let theMuon1 = TheMuon(sinhvien: SinhVien(hoTen: theMuon.hoTen, tuoi: theMuon.tuoi, lop: theMuon.lop), ngayMuon: theMuon.ngayMuon, hanTra: theMuon.hanTra, soHieuSach: theMuon.soHieuSach, maPhieuMuon: theMuon.maPhieuMuon)
        tatCaTheMuon.append(theMuon1)
    }
    
    class func xoaLuotMuonSach(maPhieuMuon: Int) {
        for (i,value) in tatCaTheMuon.enumerated() {
            if value.maPhieuMuon == maPhieuMuon {
                tatCaTheMuon.remove(at:i)
            }
        }
    }
    class func hienThiThongTinTheMuon(maPhieuMuon: Int) {
        for theMuon in tatCaTheMuon {
            if theMuon.maPhieuMuon == maPhieuMuon {
                print(theMuon.hoTen)
                print(theMuon.lop)
                print(theMuon.ngayMuon)
            }
        }
    }
}

QuanLy.themLuotMuonSach(theMuon: TheMuon(sinhvien: SinhVien(hoTen: "Tien", tuoi: 7, lop: "1A"), ngayMuon: 1, hanTra: 3, soHieuSach: 100, maPhieuMuon: 12))
QuanLy.themLuotMuonSach(theMuon: TheMuon(sinhvien: SinhVien(hoTen: "Dang", tuoi: 8, lop: "2A"), ngayMuon: 3, hanTra: 2, soHieuSach: 25, maPhieuMuon: 13))
QuanLy.themLuotMuonSach(theMuon: TheMuon(sinhvien: SinhVien(hoTen: "Nin", tuoi: 9, lop: "3B"), ngayMuon: 2, hanTra: 2, soHieuSach: 30, maPhieuMuon: 14))
QuanLy.xoaLuotMuonSach(maPhieuMuon: 12)
print(dump(tatCaTheMuon))
QuanLy.hienThiThongTinTheMuon(maPhieuMuon: 14)

