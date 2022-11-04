SELECT sv.Masv, sv.Hotensv, sv.Namsinh
From SinhVien sv
join Khoa k on sv.Makhoa = k.Makhoa
where k.Tenkhoa = 'Toan'
