-- Phase 05

create view supplier_supplies as select spares.ID as Spare_ID,supplier.ID as sup_id,name,count,Orders_ID,price,first_name,last_name,start_date,end_date,manager,state,city,street
 from spares,spares_price,supplier where spares.name = spares_price.title;
 
create view customers_orders as select distinct customer.national_ID,first_name,last_name,state,city,street,Orders_ID,Type from orders,customer,customer_orders
 where orders.ID = customer_orders.Orders_ID and customer.national_ID = customer_orders.national_ID ;
 
create view car_brand_model as select car.VIN,Orders_ID,brand.Name as brand_name ,model.Name as model_name,color,gearbox_type from car,brand,model,options 
 where car.VIN = brand.VIN and car.VIN = model.VIN and car.VIN = options.VIN ;