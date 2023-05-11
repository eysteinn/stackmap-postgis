SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE "raster_geoms" (gid serial,"location" varchar(254),"src_srs" varchar(254),"datetime" timestamp without time zone,"product" varchar(254));
ALTER TABLE "raster_geoms" ADD PRIMARY KEY (gid);
SELECT AddGeometryColumn('raster_geoms','geom','4326','MULTIPOLYGON',2);
COMMIT;
ANALYZE "raster_geoms";
