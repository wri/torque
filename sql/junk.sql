select cartodb_id,ST_Intersection(CASE WHEN ST_Dimension(ST_Snap(ST_CollectionExtract(ST_SnapToGrid(ST_CollectionExtract(ST_Simplify("the_geom", 0.0006866455078125), ST_Dimension( "the_geom") + 1 ), 0.001373291015625), ST_Dimension( "the_geom") + 1 ), ST_SnapToGrid(ST_Expand(ST_MakeEnvelope(0.3515625,51.17934297928927,0.703125,51.39920565355378, 4326), 0.00274658203125),0.001373291015625), 0.001373291015625)) = 0 OR GeometryType(ST_Snap(ST_CollectionExtract(ST_SnapToGrid(ST_CollectionExtract(ST_Simplify("the_geom", 0.0006866455078125), ST_Dimension( "the_geom") + 1 ), 0.001373291015625), ST_Dimension( "the_geom") + 1 ), ST_SnapToGrid(ST_Expand(ST_MakeEnvelope(0.3515625,51.17934297928927,0.703125,51.39920565355378, 4326), 0.00274658203125),0.001373291015625), 0.001373291015625)) = 'GEOMETRYCOLLECTION' THEN ST_Snap(ST_CollectionExtract(ST_SnapToGrid(ST_CollectionExtract(ST_Simplify("the_geom", 0.0006866455078125), ST_Dimension( "the_geom") + 1 ), 0.001373291015625), ST_Dimension( "the_geom") + 1 ), ST_SnapToGrid(ST_Expand(ST_MakeEnvelope(0.3515625,51.17934297928927,0.703125,51.39920565355378, 4326), 0.00274658203125),0.001373291015625), 0.001373291015625) ELSE ST_CollectionExtract(ST_MakeValid(ST_Snap(ST_CollectionExtract(ST_SnapToGrid(ST_CollectionExtract(ST_Simplify("the_geom", 0.0006866455078125), ST_Dimension( "the_geom") + 1 ), 0.001373291015625), ST_Dimension( "the_geom") + 1 ), ST_SnapToGrid(ST_Expand(ST_MakeEnvelope(0.3515625,51.17934297928927,0.703125,51.39920565355378, 4326), 0.00274658203125),0.001373291015625), 0.001373291015625)), ST_Dimension("the_geom") + 1 ) END, ST_SnapToGrid(ST_Expand(ST_MakeEnvelope(0.3515625,51.17934297928927,0.703125,51.39920565355378, 4326), 0.00274658203125),0.001373291015625)) as the_geom,alerts  from forma_zoom_polys WHERE the_geom && ST_MakeEnvelope(0.3515625,51.17934297928927,0.703125,51.39920565355378, 4326)&format=geojson&dp=6