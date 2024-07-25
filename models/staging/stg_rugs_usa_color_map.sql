select
    pid,
    color_id,
    color_value,
    max(dw_insert_timestamp) as dw_insert_timestamp
from public.rugs_usa_color_map
group by 1, 2, 3
