SELECT COUNT(GV.Magv) AS SL_GV
FROM GiangVien GV 
join Khoa K ON GV.Makhoa = K.Makhoa
WHERE K.Tenkhoa = 'CONG NGHE SINH HOC'