CREATE TABLE dw2024_NYC_collision_data.crash_facts ( 
	collision_id string NOT NULL  ,
	date_id string  ,
	crash_time time  ,
	zip_code string  ,
	on_street_name string  ,
	off_street_name string  ,
	cross_street_name string  ,
	number_of_persons_injured int64  ,
	number_of_persons_killed int64  ,
	number_of_pedestrians_injured int64  ,
	number_of_pedestrians_killed int64  ,
	number_of_cyclists_injured int64  ,
	number_of_cyclists_killed int64  ,
	number_of_motorists_injured int64  ,
	numbers_of_motorists_killed int64  ,
	contributing_factor_vehicle_1 string  ,
	contributing_factor_vahicle_2 string  ,
	contributing_factor_vehicle_3 string  ,
	contributing_factor_vehicle_4 string  ,
	contributing_factor_vehicle_5 string  ,
	ejection string  ,
	vehicle_type_id string  ,
	victim_1_id string  ,
	victim_2_id string  
 );

ALTER TABLE dw2024_NYC_collision_data.crash_facts ADD PRIMARY KEY ( collision_id )  NOT ENFORCED;

ALTER TABLE dw2024_NYC_collision_data.crash_facts ADD CONSTRAINT fk_crash_facts FOREIGN KEY ( zip_code ) REFERENCES dw2024_NYC_collision_data.location_dimension( zip_code ) NOT ENFORCED;

ALTER TABLE dw2024_NYC_collision_data.crash_facts ADD CONSTRAINT fk_crash_facts_date_dimension FOREIGN KEY ( date_id ) REFERENCES dw2024_NYC_collision_data.date_dimension( date_id ) NOT ENFORCED;

ALTER TABLE dw2024_NYC_collision_data.crash_facts ADD CONSTRAINT fk_crash_facts_vehicle_dimension FOREIGN KEY ( vehicle_type_id ) REFERENCES dw2024_NYC_collision_data.vehicle_dimension( vehicle_type_id ) NOT ENFORCED;

ALTER TABLE dw2024_NYC_collision_data.crash_facts ADD CONSTRAINT fk_crash_facts_victim_dimension FOREIGN KEY ( victim_1_id ) REFERENCES dw2024_NYC_collision_data.victim_dimension( victim_id ) NOT ENFORCED;

ALTER TABLE dw2024_NYC_collision_data.crash_facts ADD CONSTRAINT fk_crash_facts_victim_dimension_0 FOREIGN KEY ( victim_2_id ) REFERENCES dw2024_NYC_collision_data.victim_dimension( victim_id ) NOT ENFORCED;


CREATE TABLE `dw2024_NYC_collision_data`.location_dimension ( 
	zip_code string NOT NULL  ,
	latitude numeric,
	longitude numeric  ,
	polygon geography  
 );

ALTER TABLE dw2024_NYC_collision_data.location_dimension ADD PRIMARY KEY ( zip_code )  NOT ENFORCED;


CREATE TABLE dw2024_NYC_collision_data.victim_dimension ( 
	victim_id string NOT NULL  ,
	age int64  ,
	gender int64  
 );

ALTER TABLE dw2024_NYC_collision_data.victim_dimension ADD PRIMARY KEY ( victim_id )  NOT ENFORCED;


CREATE TABLE dw2024_NYC_collision_data.vehicle_dimension ( 
	vehicle_type_id string NOT NULL  ,
	vehicle_type_name string  
 );

ALTER TABLE dw2024_NYC_collision_data.vehicle_dimension ADD PRIMARY KEY ( vehicle_type_id )  NOT ENFORCED;


CREATE TABLE dw2024_NYC_collision_data.date_dimension ( 
	date_id string NOT NULL  ,
	year int64  ,
	day int64  ,
	month int64  ,
	date date  
 );

ALTER TABLE dw2024_NYC_collision_data.date_dimension ADD PRIMARY KEY ( date_id )  NOT ENFORCED;
