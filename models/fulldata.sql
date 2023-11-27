SELECT 
a.Area_manager,
a.Branch_size,
a.Location,
b.Product_cd,
b.Product_name,
b.Price,
c.`Date`,
c.Profit,
c.Revenue
from hive_metastore.default.branch a, hive_metastore.default.product b, hive_metastore.default.sales c
where
c.Branch_id = a.Branch_id
and
c.Product_id = b.Product_id