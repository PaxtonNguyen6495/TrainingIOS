SELECT GV.Magv,GV.Hotengv,K.Tenkhoa
FROM GiangVien GV JOIN Khoa K
ON GV.Makhoa = K.Makhoa
WHERE GV.Magv IN (
SELECT HD.Magv
FROM HuongDan HD
GROUP BY HD.Magv
HAVING COUNT(HD.MaSV)>=3)