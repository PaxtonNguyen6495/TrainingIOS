SELECT dt.Madt, dt.Tendt
FROM DeTai dt
WHERE dt.Madt IN (
SELECT hd.Madt
FROM HuongDan hd
GROUP BY hd.Madt
HAVING COUNT(hd.Madt) > 2 )