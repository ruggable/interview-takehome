with cte_links as (
    select
        base_url,
        page_links,
        card_links,
        request_time_stamp,
        dw_insert_timestamp
    from public.rugs_usa_links
)

select
    base_url,
    page_links,
    card_links,
    replace(card_links,'https://www.rugsusa.com/','') as parent_url,
    request_time_stamp,
    dw_insert_timestamp
from public.rugs_usa_links
