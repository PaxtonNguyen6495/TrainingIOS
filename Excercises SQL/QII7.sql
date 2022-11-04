SELECT k.Tenkhoa,count(sv.Makhoa) as SL_SV
FROM Khoa k
Join SinhVien sv on k.Makhoa = sv.Makhoa
group by k.Makhoa
