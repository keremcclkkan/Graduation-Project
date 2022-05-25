create extension postgis

create table building_types
( name_ character varying(30),
 CONSTRAINT building_types_pkey PRIMARY KEY (name_));
  
create table buildings
( b_type character varying(30),
  id serial,
  b_name character varying(50), 
  communication_no text,
  loc geometry('point',4326),
  observation_time timestamp,
  CONSTRAINT buildings_pkey PRIMARY KEY (id));
  
create table regions
( region_id serial,
  responsible character varying(30),
  region_geom geometry('polygon',4326),
  CONSTRAINT regions_pkey PRIMARY KEY (region_id));
  
create table admins
( admin_name character varying(30),
  CONSTRAINT admins_pkey PRIMARY KEY (admin_name));
  
insert into building_types(name_) values
('Yemekhanler'),
('Sirketler'),
('AVM'),
('Stadlar'),
('Ogrenci Evleri'),
('Fakulte Binalari'),
('Kutuphane'),
('Kafeler'),
('Yurtlar');

insert into admins(admin_name) values
('Damla Oksal'),
('Kerem Celikkan'),
('Yasin Kazan');