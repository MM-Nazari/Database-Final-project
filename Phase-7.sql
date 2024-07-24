-- Phase 07

create assertion count_check check (not exists(SELECT count from spares where count <= 0));

create assertion order_check check (not exists ( select national_ID,count(distinct Ordes_ID) from customer_orders group by national_ID having count(distinct Ordes_ID) >1));
