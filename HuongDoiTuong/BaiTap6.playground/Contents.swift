
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
    var sinhvien: SinhVien
    var ngayMuon: Int
    var hanTra: Int
    var soHieuSach: Int
    var maPhieuMuon: Int
    
    init(sinhvien: SinhVien, ngayMuon: Int, hanTra: Int, soHieuSach: Int, maPhieuMuon: Int) {
        self.ngayMuon = ngayMuon
        self.hanTra = hanTra
        self.soHieuSach = soHieuSach
        self.maPhieuMuon = maPhieuMuon
        self.sinhvien = sinhvien
        super.init(hoTen: sinhvien.hoTen, tuoi: sinhvien.tuoi, lop: sinhvien.lop)
    }
}

var tatCaSinhVien: [TheMuon] = []
class QuanLy {
    class func themMuonSach(muonSach: TheMuon) {
        let sinhVien = TheMuon(sinhvien: SinhVien(hoTen: muonSach.sinhvien.hoTen, tuoi:muonSach.sinhvien.tuoi, lop: muonSach.sinhvien.lop), ngayMuon: muonSach.ngayMuon, hanTra: muonSach.hanTra, soHieuSach: muonSach.soHieuSach, maPhieuMuon: muonSach.maPhieuMuon)
        tatCaSinhVien.append(sinhVien)
    }

    class func xoaSinhVien(maPhieuMuon: Int) {
        for (i,value) in tatCaSinhVien.enumerated() {
            if value.maPhieuMuon == maPhieuMuon {
                tatCaSinhVien.remove(at:i)
            }
        }
    }
}

QuanLy.themMuonSach(muonSach: TheMuon(sinhvien: SinhVien(hoTen: "Lan", tuoi: 9, lop: "3A"), ngayMuon: 1102022, hanTra: 2102022, soHieuSach: 1, maPhieuMuon: 1))
QuanLy.themMuonSach(muonSach: TheMuon(sinhvien: SinhVien(hoTen: "Hung", tuoi: 12, lop: "6"), ngayMuon: 3102022, hanTra: 4102022, soHieuSach: 2, maPhieuMuon: 3))
QuanLy.xoaSinhVien(maPhieuMuon: 3)
print(dump(tatCaSinhVien))

