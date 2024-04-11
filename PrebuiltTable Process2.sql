/****** This script is to process prebuilt tables in SQL

Tables are
1. Prebuilt_Tables_FieldCategories
2. Prebuilt_Tables_field_lookup
3. Prebuilt_Tables_FieldLookups
4. Prebuilt_Tables_Fields
5. Prebuilt_Tables_Tables

******/

-- Give order ID to each record 
SELECT [FieldName]
      ,[Category]
      ,[PrebuiltTableID]
      ,ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS "ID"
FROM [PrebuitTables].[dbo].[Prebuilt_Tables_FieldCategories];



-- =======================================================================
---1. Prebuilt_Tables_FieldCategories
SELECT [FieldName]
      ,[Category]
      ,[PrebuiltTableID
  FROM [PrebuitTables].[dbo].[Prebuilt_Tables_FieldCategories]
  --- Where  [PrebuiltTableID] in (14, 21, 22, 26, 27, 28, 29, 30, 31, 32, 33)
  

 ---======================================================================

--- This is to change the year by 5

SELECT CONCAT(LEFT([FieldName], LEN([FieldName]) - 2), CAST((CAST(RIGHT([FieldName], 2) AS INT) + 5) AS VARCHAR(10))) AS "FieldName"
      ,[Category]
      ,[PrebuiltTableID]
	  ,[FieldName] as "FieldName_Old"
FROM [dbo].[Prebuilt_Tables_FieldCategories]
WHERE [PrebuiltTableID] IN (14, 21, 22, 26, 27, 28, 29, 30, 31, 32, 33)
      AND [FieldName] NOT IN ('TOTAREA', 'LANDAREA', 'WATERAREA')



----============================

SELECT CONCAT(LEFT([FieldName], LEN([FieldName]) - 2), CAST((CAST(RIGHT([FieldName], 2) AS INT) + 5) AS VARCHAR(10))) AS "FieldName"
      ,[Category]
      ,[PrebuiltTableID]	  
INTO Prebuilt_Tables_FieldCategories_New --- save it to a table
FROM [dbo].[Prebuilt_Tables_FieldCategories]
WHERE [PrebuiltTableID] IN (14, 21, 22, 26, 27, 28, 29, 30, 31, 32, 33)
      AND [FieldName] NOT IN ('TOTAREA', 'LANDAREA', 'WATERAREA');




SELECT *
From [dbo].[Prebuilt_Tables_FieldCategories_New]





---======================================================================
---======================================================================
---======================================================================






/****** This script is to process prebuilt tables in SQL

Tables are
1. Prebuilt_Tables_FieldCategories
2. Prebuilt_Tables_field_lookup
3. Prebuilt_Tables_FieldLookups
4. Prebuilt_Tables_Fields
5. Prebuilt_Tables_Tables

******/
-- =======================================================================
---1. Prebuilt_Tables_FieldCategories
SELECT [FieldName]
      ,[Category]
      ,[PrebuiltTableID]
	
  FROM [PrebuitTables].[dbo].[Prebuilt_Tables_FieldCategories]
  --- Where  [PrebuiltTableID] in (14, 21, 22, 26, 27, 28, 29, 30, 31, 32, 33)
  

 ---=====================================================================================
 SELECT [FieldName]
      ,[Category]
      ,[PrebuiltTableID]
      ,ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS "ID"
FROM [PrebuitTables].[dbo].[Prebuilt_Tables_FieldCategories];


---======================================================================================

SELECT [FieldName]
      ,[Category]
      ,[PrebuiltTableID]
	  ,[ID]
FROM (
    SELECT [FieldName]
      ,[Category]
      ,[PrebuiltTableID]
      ,ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS "ID"
   FROM [PrebuitTables].[dbo].[Prebuilt_Tables_FieldCategories]) AS A
WHERE [PrebuiltTableID] IN (14, 21, 22, 26, 27, 28, 29, 30, 31, 32, 33)
      AND [FieldName] NOT IN ('TOTAREA', 'LANDAREA', 'WATERAREA') 
 

 ---======================================================================================

--- This is to change the year by 5
--- Select only the needed rows
--- Update the years

SELECT CONCAT(LEFT([FieldName], LEN([FieldName]) - 2), CAST((CAST(RIGHT([FieldName], 2) AS INT) + 5) AS VARCHAR(10))) AS "FieldName"
      ,[Category]
      ,[PrebuiltTableID]
	  ,[ID]
FROM 
	(SELECT [FieldName]
		  ,[Category]
		  ,[PrebuiltTableID]
		  ,ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS "ID"
	   FROM [PrebuitTables].[dbo].[Prebuilt_Tables_FieldCategories]) AS A

WHERE [PrebuiltTableID] IN (14, 21, 22, 26, 27, 28, 29, 30, 31, 32, 33)
      AND [FieldName] NOT IN ('TOTAREA', 'LANDAREA', 'WATERAREA')



----============================

SELECT CONCAT(LEFT([FieldName], LEN([FieldName]) - 2), CAST((CAST(RIGHT([FieldName], 2) AS INT) + 5) AS VARCHAR(10))) AS "FieldName"
      ,[Category]
      ,[PrebuiltTableID]	  
INTO Prebuilt_Tables_FieldCategories_New
FROM [dbo].[Prebuilt_Tables_FieldCategories]
WHERE [PrebuiltTableID] IN (14, 21, 22, 26, 27, 28, 29, 30, 31, 32, 33)
      AND [FieldName] NOT IN ('TOTAREA', 'LANDAREA', 'WATERAREA');




SELECT *
From [dbo].[Prebuilt_Tables_FieldCategories_New]