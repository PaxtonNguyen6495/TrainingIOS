
//Để quản lý các hộ dân cư trong một khu phố, người ta cần các thông tin sau: Số thành viên trong gia đình, Số nhà, thông tin mỗi cá nhân trong gia đình. Với mỗi cá nhân, người ta quản lý các thông tin sau: Họ tên, Tuổi, Nghề nghiệp, số chứng minh nhân dân(duy nhất cho mỗi người).
//
//Yêu cầu 1: Hãy xây dựng lớp Nguoi để quản lý thông tin của mỗi cá nhân.
//
//Yêu cầu 2: Xây dựng lớp HoGiaDinh để quản lý thông tin của từng hộ gia đình.
//
//Yêu cầu 2: Xây dựng lớp KhuPho để quản lý các thông tin của từng hộ gia đình.
//
//Yêu cầu 3: Nhập n hộ gia đình. hiển thị thông tin của các hộ trong khu phố.

class Nguoi {
    var ten: String
    var tuoi: Int
    var ngheNghiep: String
    var soCMND: Int
    
    init(ten: String, tuoi: Int, ngheNghiep: String, soCMND: Int ) {
        self.ten = ten
        self.tuoi = tuoi
        self.ngheNghiep = ngheNghiep
        self.soCMND = soCMND
    }
}

class HoGiaDinh {
    var soNha: String
    var cacThanhVien: [Nguoi] = []
    var soThanhVien: Int {
        return cacThanhVien.count
    }

    init(soNha: String, cacThanhVien: [Nguoi]) {
        self.soNha = soNha
        self.cacThanhVien = cacThanhVien
    }
}

class KhuPho {
    var tenKhuPho: String
    var cacHo: [HoGiaDinh] = []
    var soHoGiaDinh: Int {
        return cacHo.count
    }
    
    init(tenKhuPho: String, cacHo: [HoGiaDinh]) {
        self.tenKhuPho = tenKhuPho
        self.cacHo = cacHo
    }
}

let nguoi1 = Nguoi(ten: "thao", tuoi: 18, ngheNghiep: "IT", soCMND: 01)
let nguoi2 = Nguoi(ten: "Phat", tuoi: 18, ngheNghiep: "IT", soCMND: 02)
let nguoi3 = Nguoi(ten: "Hung", tuoi: 20, ngheNghiep: "Free", soCMND: 03)
let hoGD1 = HoGiaDinh(soNha: "215 PNX", cacThanhVien: [nguoi1, nguoi2])
let hoGD2 = HoGiaDinh(soNha: "306 TCV", cacThanhVien: [nguoi3])
let khuPho = KhuPho(tenKhuPho: "A", cacHo: [hoGD1, hoGD2])
print("day la khu pho \(khuPho.tenKhuPho)")
for ho in khuPho.cacHo {
    print(ho.soNha)
    print(ho.soThanhVien)
    print(dump(ho.cacThanhVien))
}
