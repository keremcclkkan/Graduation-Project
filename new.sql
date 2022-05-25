create table building_types
( name_ character varying(30),
  CONSTRAINT building_types_pkey PRIMARY KEY (name_));
  
create table buildings
( b_type character varying(30),
  id serial,
  loc geometry('point',4326),
  observation_time timestamp,
  CONSTRAINT buildings_pkey PRIMARY KEY (id));
  
create table regions
( region_id serial,
  responsible character varying(30),
  region_geom geometry('polygon',4326),
  CONSTRAINT regions_pkey PRIMARY KEY (region_id));  
  
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