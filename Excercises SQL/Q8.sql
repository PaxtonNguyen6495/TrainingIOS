SELECT k.Dienthoai
from Khoa k
join SinhVien sv on k.Makhoa = sv.Makhoa
where sv.Hotensv = 'Le Van Son'