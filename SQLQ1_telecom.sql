create table customers (

	customer_id int primary key,
	first_name varchar(50),
	last_name varchar(50),
	contact_no varchar(20),
	gender varchar(50),
	email varchar(20),
	join_date date,
	city varchar(50),
	state varchar(50),
	country varchar(50)

)

alter table customers 
alter column email varchar(50)

create table usage (

	usage_id int primary key,
	cust_id int,
	data_usage_mb int,
	voice_minutes int,
	sms_count int,
	usage_date date,
	foreign key (cust_id) references customers(customer_id)
)

create table sales(

	sale_id int primary key,
	custo_id int,
	plan_type varchar(50),
	sale_amount decimal(10,2),
	sale_date date,
	foreign key (custo_id) references customers(customer_id)

)