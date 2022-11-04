SELECT Count(sv.Masv) as SL_SV
FROM SinhVien sv
join Khoa k on sv.Makhoa = k.Makhoa
where k.Tenkhoa = 'Cong nghe Sinh hoc'
