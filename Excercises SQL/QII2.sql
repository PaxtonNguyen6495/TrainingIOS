SELECT dt.Tendt
from DeTai dt
where not exists 
(select Madt from HuongDan hd where dt.Madt = hd.Madt)