SELECT sv.Masv, sv.Hotensv, hd.Ketqua
FROM SinhVien sv
JOIN HuongDan hd ON sv.Masv = hd.Masv
WHERE hd.Ketqua = 0  