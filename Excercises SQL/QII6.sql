SELECT sv.Masv, sv.Hotensv, hd.KetQua
FROM SinhVien sv
join HuongDan hd on sv.Masv = hd.Masv
join Khoa k on k.Makhoa = sv.Makhoa
where k.Tenkhoa = 'Dia ly va QLTN'

