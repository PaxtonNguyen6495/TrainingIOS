SELECT g.Magv, g.Hotengv, k.Tenkhoa
FROM giangvien g
inner join khoa k on g.MaKhoa = k.MaKhoa

