

SELECT TABLE_CATALOG,TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME
				FROM 	INFORMATION_SCHEMA.COLUMNS
				WHERE 		
						TABLE_CATALOG	= 'INFO'
					AND COLUMN_NAME LIKE '%HospitalNumber%'
		

					
-- search sps and views				
SELECT DISTINCT
       o.name AS Object_Name,
       o.type_desc,
       o.create_date,
       m.definition
  FROM sys.sql_modules m
       INNER JOIN
       sys.objects o
         ON m.object_id = o.object_id
 WHERE m.definition Like '%[Bed Occupancy]%';
 
 
 To find a value in the database, use  info.dbo.SearchAllTables (coped from internet)- Will take lot of time
 

-- search report server for any reports

SELECT TOP 1000 * FROM ReportServer.dbo.[Catalog] WHERE name LIKE '%Ophthalmology%'