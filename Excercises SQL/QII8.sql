SELECT sv.Masv, sv.Hotensv
FROM SinhVien sv
join HuongDan hd on sv.Masv = hd.Masv
join Detai dt on dt.Madt = hd.Madt
where sv.Quequan = dt.Noithuctap