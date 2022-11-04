SELECT Madt, Tendt
FROM DeTai
WHERE Kinhphi IN
(SELECT MAX(Kinhphi)
FROM DeTai)