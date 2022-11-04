SELECT sv.Masv, sv.Hotensv,sv.Namsinh, sv.Quequan, hd.Ketqua
FROM SinhVien sv
JOIN HuongDan hd ON sv.Masv = hd.Masv
WHERE hd.Ketqua IS NULL 
