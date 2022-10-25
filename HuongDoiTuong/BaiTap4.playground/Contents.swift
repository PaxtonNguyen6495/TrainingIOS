
//Các thí sinh dự thi đại học bao gồm các thí sinh thi khối A, B, và khối C. Các thí sinh cần quản lý các thông tin sau: Số báo danh, họ tên, địa chỉ, mức ưu tiên.
//Thí sinh thi khối A thi các môn: Toán, Lý, Hoá.
//Thí sinh thi khối B thi các môn: Toán, Hoá, Sinh.
//Thí sinh thi khối C thi các môn: Văn, Sử, Địa.
//Yêu cầu 1: Xây dựng các lớp để quản lý các thi sinh
//Yêu cầu 2: Xây dựng lớp TuyenSinh có các chức năng:
//* Thêm mới thí sinh.
//* Hiện thị thông tin của thí sinh theo từng khối.
//* Tìm kiếm theo số báo danh.

class ThiSinh {
    var soBaoDanh: Int
    var hoTen: String
    var diaChi: String
    var mucUuTien: String
    
    init(soBaoDanh: Int, hoTen: String, diaChi: String, mucUuTien: String) {
        self.soBaoDanh = soBaoDanh
        self.hoTen = hoTen
        self.diaChi = diaChi
        self.mucUuTien = mucUuTien
    }
}

class ThiSinhKhoiABC: ThiSinh {
    var khoi: String
    var cacMonThi: (String, String, String)
    
    init(thiSinh: ThiSinh, khoi: String, cacMonThi: (String, String, String)) {
        self.khoi = khoi
        self.cacMonThi = cacMonThi
        super.init(soBaoDanh: thiSinh.soBaoDanh, hoTen: thiSinh.hoTen, diaChi: thiSinh.diaChi, mucUuTien: thiSinh.mucUuTien)
    }
}

var tatCaThiSinh: [ThiSinh] = []
class TuyenSinh {
    class func themMoiThiSinh(thiSinh: ThiSinh, khoi: String, cacMonThi: (String, String, String)) {
        let thiSinhKhoiABC = ThiSinhKhoiABC(thiSinh: thiSinh, khoi: khoi, cacMonThi: cacMonThi)
        tatCaThiSinh.append(thiSinhKhoiABC)
    }
}
TuyenSinh.themMoiThiSinh(thiSinh: ThiSinh(soBaoDanh: 1, hoTen: "a", diaChi: "b", mucUuTien: "c"), khoi: "d", cacMonThi: ("toan", "ly", "hoa"))
TuyenSinh.themMoiThiSinh(thiSinh: ThiSinh(soBaoDanh: 2, hoTen: "a", diaChi: "b", mucUuTien: "c"), khoi: "d", cacMonThi: ("toan", "ly", "hoa"))
TuyenSinh.themMoiThiSinh(thiSinh: ThiSinh(soBaoDanh: 3, hoTen: "a", diaChi: "b", mucUuTien: "c"), khoi: "d", cacMonThi: ("toan", "ly", "hoa"))
print(dump(tatCaThiSinh))




