select g.Magv, g.Hotengv, k.Tenkhoa
from giangvien g
inner join khoa k on g.MaKhoa = k.MaKhoa
where Tenkhoa = 'Dia ly va QLTN'