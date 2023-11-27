{{
    config(
        materialized='table'
    )
}}
as 
SELECT
max(c.Profit)
from hive_metastore.default.branch a, hive_metastore.default.product b, hive_metastore.default.sales c
where
c.Branch_id = a.Branch_id
and
c.Product_id = b.Product_id
group by a.Branch_size