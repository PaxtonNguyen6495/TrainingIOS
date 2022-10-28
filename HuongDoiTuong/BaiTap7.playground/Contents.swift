
//Xây dựng chương trình quản lý kết quả học tập của sinh viên tại một trường đại học. Có 2 loại sinh viên là sinh viên chính quy và sinh viên tại chức với các thông tin giống nhau: mã sinh viên, họ tên, ngày tháng năm sinh, năm vào học, điểm đầu vào và danh sách kết quả học tập. Sinh viên tại chức có thêm thông tin nơi liên kết đào tạo(Đồng Nai, Cà Mau, …). Khoa gồm có các thông tin: tên khoa và danh sách sinh viên đang theo học. Kết quả học tập gồm có tên học kỳ, điểm trung bình học kỳ đó.
//Phương thức khởi tạo init cho các lớp
//Phương thức thêm mới sinh viên, sinh viên tại chức
//Phương thức xác định sinh viên có phải là chính quy hay không?

enum ThemSVError: Error {
    case idIsZero
    case namSinhIsZero
}

class SinhVienChinhQuy {
    var maSinhVien: Int
    var hoTen: String
    var ngayThangNamSinh: Int
    var namVaoHoc: Int
    var diemDauVao: Int
    var isTaiChuc: Bool = false
    var dSKetQuaHocTap: (toan: Int, ly: Int, hoa: Int, anh: Int)
    
    init(maSinhVien: Int, hoTen: String, ngayThangNamSinh: Int, namVaoHoc: Int, diemDauVao: Int, dsKetQuaHocTap: (toan: Int, ly: Int, hoa: Int, anh: Int)) {
        self.maSinhVien = maSinhVien
        self.hoTen = hoTen
        self.ngayThangNamSinh = ngayThangNamSinh
        self.namVaoHoc = namVaoHoc
        self.diemDauVao = diemDauVao
        self.dSKetQuaHocTap = dsKetQuaHocTap
    }
}

class SinhVienTaiChuc: SinhVienChinhQuy {
    var noiLienKetDaoTao: String
    
    init(sinhVienChinhQuy: SinhVienChinhQuy, noiLienKetDaoTao: String) {
        self.noiLienKetDaoTao = noiLienKetDaoTao
        super.init(maSinhVien: sinhVienChinhQuy.maSinhVien, hoTen: sinhVienChinhQuy.hoTen, ngayThangNamSinh: sinhVienChinhQuy.ngayThangNamSinh, namVaoHoc: sinhVienChinhQuy.namVaoHoc, diemDauVao: sinhVienChinhQuy.diemDauVao, dsKetQuaHocTap: sinhVienChinhQuy.dSKetQuaHocTap)
        isTaiChuc = true
    }
}

var tatCaSinhVienChinhQuy: [SinhVienChinhQuy] = []
var tatCaSinhVienTaiChuc: [SinhVienTaiChuc] = []
var tatCaSV: [SinhVienChinhQuy] = []

class QuanLy {
    class func themMoiSinhVienChinhQuy(sinhVienCQ: SinhVienChinhQuy) throws {
        if sinhVienCQ.maSinhVien == 0 {
            throw ThemSVError.idIsZero
        }
        if sinhVienCQ.ngayThangNamSinh == 0 {
            throw ThemSVError.namSinhIsZero
        }
        let sinhVienCQMoi = SinhVienChinhQuy(maSinhVien:sinhVienCQ.maSinhVien, hoTen: sinhVienCQ.hoTen, ngayThangNamSinh: sinhVienCQ.ngayThangNamSinh, namVaoHoc: sinhVienCQ.namVaoHoc, diemDauVao: sinhVienCQ.diemDauVao, dsKetQuaHocTap: sinhVienCQ.dSKetQuaHocTap)
        tatCaSinhVienChinhQuy.append(sinhVienCQMoi)
        tatCaSV.append(sinhVienCQMoi)
    }
    
    class func themMoiSinhVienTaiChuc(sinhVienTC: SinhVienTaiChuc) throws {
        if sinhVienTC.maSinhVien == 0 {
            throw ThemSVError.idIsZero
        }
        if sinhVienTC.ngayThangNamSinh == 0 {
            throw ThemSVError.namSinhIsZero
        }
        let sinhVienTCMoi = SinhVienTaiChuc(sinhVienChinhQuy: SinhVienChinhQuy(maSinhVien: sinhVienTC.maSinhVien, hoTen: sinhVienTC.hoTen, ngayThangNamSinh: sinhVienTC.ngayThangNamSinh, namVaoHoc: sinhVienTC.namVaoHoc, diemDauVao: sinhVienTC.diemDauVao, dsKetQuaHocTap: sinhVienTC.dSKetQuaHocTap), noiLienKetDaoTao: sinhVienTC.noiLienKetDaoTao)
        tatCaSinhVienTaiChuc.append(sinhVienTCMoi)
        tatCaSV.append(sinhVienTCMoi)
    }
    
    class func xacDinhSinhVienCQ(sinhVien: SinhVienChinhQuy) -> Bool {
        return sinhVien.isTaiChuc
    }
}

do {
    try QuanLy.themMoiSinhVienChinhQuy(sinhVienCQ: SinhVienChinhQuy(maSinhVien: 3, hoTen: "Lix", ngayThangNamSinh: 121995, namVaoHoc:2010 , diemDauVao: 17, dsKetQuaHocTap: (toan: 6, ly: 5, hoa: 7, anh: 6)))
    try QuanLy.themMoiSinhVienTaiChuc(sinhVienTC: SinhVienTaiChuc(sinhVienChinhQuy: SinhVienChinhQuy(maSinhVien: 12, hoTen: "Ka", ngayThangNamSinh: 641995, namVaoHoc: 2013, diemDauVao: 23, dsKetQuaHocTap: (toan: 7, ly: 8, hoa: 9, anh: 7)), noiLienKetDaoTao: "SaiGon"))
    print("Success! Yum.")
} catch ThemSVError.idIsZero {
    print("id khong hop le")
} catch ThemSVError.namSinhIsZero {
    print("nam sinh k0 hop le")
}

QuanLy.xacDinhSinhVienCQ(sinhVien: tatCaSV[1])

for i in 1...10 {
    let sinhVien = SinhVienChinhQuy(maSinhVien: i, hoTen: "Lix + \(i)", ngayThangNamSinh: 121995, namVaoHoc:2013, diemDauVao: 17, dsKetQuaHocTap: (toan: 5, ly: 7, hoa: 8, anh: 9))
    tatCaSinhVienChinhQuy.append(sinhVien)
    tatCaSV.append(sinhVien)
}

for i in 1...15 {
    var sinhVien = SinhVienTaiChuc(sinhVienChinhQuy: SinhVienChinhQuy(maSinhVien: 2, hoTen: "Ka", ngayThangNamSinh: 641995, namVaoHoc: 2013, diemDauVao: 23, dsKetQuaHocTap: (toan: 9, ly: 8, hoa: 6, anh: 5)), noiLienKetDaoTao: "SaiGon")
    if i > 5 && i < 10 {
        sinhVien.namVaoHoc = 2010
        sinhVien.diemDauVao = 18 + i
        sinhVien.dSKetQuaHocTap = (toan: 10, ly: 7, hoa: 7, anh: 9)
    }
    if i > 10 && i < 15 {
        sinhVien.namVaoHoc = 2021
        sinhVien.diemDauVao = 10 + i
        sinhVien.dSKetQuaHocTap = (toan: 3, ly: 7, hoa: 7, anh: 9)
    }
    tatCaSinhVienTaiChuc.append(sinhVien)
    tatCaSV.append(sinhVien)
}

class XacDinh {
    static func diemTB(maSV: Int) {
        var diemTBMonHoc = 0
        for sv in tatCaSV {
            if sv.maSinhVien == maSV {
                diemTBMonHoc = (sv.dSKetQuaHocTap.toan + sv.dSKetQuaHocTap.hoa + sv.dSKetQuaHocTap.ly + sv.dSKetQuaHocTap.anh) / 4
            }
        }
        print(diemTBMonHoc)
    }

    static func tongSoSinhVienChinhQuy() {
        print(dump(tatCaSinhVienChinhQuy.count))
    }

    static func diemDauVaoCaoNhat() {
        var max = tatCaSV[0].diemDauVao
        for sv in tatCaSV {
            if sv.diemDauVao >= max {
                max = sv.diemDauVao
            }
        }
        for sv in tatCaSV {
            if sv.diemDauVao == max {
                print(sv.hoTen)
                print(dump(sv))
            }
        }
    }
    
    static func inDiemTrungBinhTheoYeuCau() {
        for sv in tatCaSV {
            if ((sv.dSKetQuaHocTap.toan + sv.dSKetQuaHocTap.hoa + sv.dSKetQuaHocTap.ly + sv.dSKetQuaHocTap.anh) / 4) >= 8 {
                print(sv.hoTen)
            }
        }
    }

    static func thongKeSoLuongSinhVienTheoNamVaoHoc(namVaoHoc: Int) {
        var dem = 0
        for sv in tatCaSV {
            if sv.namVaoHoc == namVaoHoc {
                dem += 1
            }
        }
        print(dem)
    }
}

XacDinh.diemTB(maSV: 20)
XacDinh.tongSoSinhVienChinhQuy()
XacDinh.diemDauVaoCaoNhat()
XacDinh.inDiemTrungBinhTheoYeuCau()
XacDinh.thongKeSoLuongSinhVienTheoNamVaoHoc(namVaoHoc: 2010)
