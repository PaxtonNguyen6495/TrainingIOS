SELECT dt.Madt, dt.Tendt
from DeTai dt
join HuongDan hd on dt.Madt = hd.Madt
join GiangVien gv on hd.Magv = gv.Magv
where gv.Hotengv = 'Tran Son'