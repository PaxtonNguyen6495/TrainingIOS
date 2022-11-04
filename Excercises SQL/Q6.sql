SELECT sv.Masv, sv.Hotensv, sv.Namsinh, sv.Quequan
FROM SinhVien sv
WHERE NOT EXISTS
(Select hd.Masv
from HuongDan hd
Where sv.Masv = hd.Masv)
