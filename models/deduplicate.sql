{{ dbt_utils.deduplicate(
    relation=source('src_db1', 'emp'),
    partition_by='id',
    order_by="id",
   )
}}