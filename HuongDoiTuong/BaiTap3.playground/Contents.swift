
//Một đơn vị sản xuất gồm có các cán bộ là công nhân, kỹ sư, nhân viên. Mỗi cán bộ cần quản lý các dữ liệu: Họ tên, tuổi, giới tính(nam, nữ, khác), địa chỉ và có method làm việc.
//* Cấp công nhân sẽ có thêm các thuộc tính riêng: Bậc (1 đến 10). method làm việc in ra là tôi là công nhân
//* Cấp kỹ sư có thuộc tính riêng: Nghành đào tạo. method làm việc in ra tôi là kỹ sư
//* Các Trưởng phòng có thuộc tính riêng: Tên phòng ban, method làm việc tôi là trưởng phòng
//Yêu cầu 1: Xây dựng các lớp CongNhan, KySu, trưởng phòng kế thừa từ lớp CanBo.
//Yêu cầu 2: Xây dựng lớp QLCB(quản lý cán bộ) cài đặt các phương thức thực hiện các chức năng sau:
//* Thêm mới cán bộ.
//* Tìm kiếm theo họ tên.
//* Hiện thị thông tin về danh sách các cán bộ trong 1 phòng ban

class CanBo {
    var hoTen: String
    var tuoi: Int
    var gioiTinh: String
    var diaChi: String

    func lamViec() {
        print("")
    }

    init(hoTen: String,tuoi: Int, gioiTinh: String, diaChi: String) {
        self.hoTen = hoTen
        self.tuoi = tuoi
        self.gioiTinh = gioiTinh
        self.diaChi = diaChi
    }
}

class CongNhan: CanBo {
    var capBac: Int
    override func lamViec() {
        print("Tôi là công nhân")
    }

    init(canBo: CanBo, capBac: Int) {
        self.capBac = capBac
        super.init(hoTen: canBo.hoTen, tuoi: canBo.tuoi, gioiTinh: canBo.gioiTinh, diaChi: canBo.diaChi)
    }
}

class KySu: CanBo {
    var nganhDaoTao: String
    override func lamViec() {
        print("Tôi là công nhân")
    }

    init(hoTen: String, tuoi: Int, gioiTinh: String, diaChi: String, nganhDaoTao: String) {
        self.nganhDaoTao = nganhDaoTao
        super.init(hoTen: hoTen, tuoi: tuoi, gioiTinh: gioiTinh, diaChi: diaChi)
    }
}

class TruongPhong: CanBo {
    var tenPhongBan: String
    override func lamViec() {
        print("Tôi là trưởng phòng")
    }

    init(hoTen: String, tuoi: Int, gioiTinh: String, diaChi: String, tenPhongBan: String) {
        self.tenPhongBan = tenPhongBan
        super.init(hoTen: hoTen, tuoi: tuoi, gioiTinh: gioiTinh, diaChi: diaChi)
    }
}

class QuanLyCanBo {
    static func themMoiCanBo(canBo: CanBo, capBac: Int?, nganhDaoTao: String?, tenPhongBan: String?) {
        if let capBac {
            let congNhan = CongNhan(canBo: canBo, capBac: capBac)
            tatCaCanBo.append(congNhan)
            print("cong nhan")
            return
        }
        if let nganhDaoTao {
            let kySu = KySu(hoTen: canBo.hoTen, tuoi: canBo.tuoi, gioiTinh: canBo.gioiTinh, diaChi: canBo.diaChi, nganhDaoTao: nganhDaoTao)
            tatCaCanBo.append(kySu)
            return
        }
        if let tenPhongBan {
            let truongPhong = TruongPhong(hoTen: canBo.hoTen, tuoi: canBo.tuoi, gioiTinh: canBo.gioiTinh, diaChi: canBo.diaChi, tenPhongBan: tenPhongBan)
            tatCaCanBo.append(truongPhong)
            return
        }
    }
}

var tatCaCanBo: [CanBo] = []
QuanLyCanBo.themMoiCanBo(canBo: CanBo(hoTen: "a", tuoi: 15, gioiTinh: "nam", diaChi: "216 pxn"), capBac: 1, nganhDaoTao: nil, tenPhongBan: nil)
QuanLyCanBo.themMoiCanBo(canBo: CanBo(hoTen: "b", tuoi: 16, gioiTinh: "nam", diaChi: "216 pxn"), capBac: nil, nganhDaoTao: nil, tenPhongBan: "BO")
print(tatCaCanBo.count)
print(dump(tatCaCanBo))

