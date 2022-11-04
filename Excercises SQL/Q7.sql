select k.Makhoa, k.Tenkhoa, count(gv.Makhoa) as SL_GV
from GiangVien gv
inner join Khoa k on gv.Makhoa = k.Makhoa
group by k.Makhoa, k.Tenkhoa
