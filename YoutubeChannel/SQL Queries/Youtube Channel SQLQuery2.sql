SELECT TOP (1000) [channel_name]
      ,[total_subscribers]
      ,[total_views]
      ,[total_videos]
  FROM [YouTube_db].[dbo].[view_uk_youtubers]




  /*
  #Data Quality Tests
  1. The data needs to be 200 records of Youtube Channel (row count check)---Passed!!!!!!!

  2. The Data needs 4 fields( channel name, total subscriber, total views, total videos. So column count tests)--Passed!!!!!!

  3. Data type checks (Channel name string format, others have to be numerical types)--Passd!!!!!!

  4. Each records must be unique in the data set ( duplicate count check)--Passed!!!!!!


  #Row count = 100 (Passed)
  #Column = 4

  Data Types

  Channel Name = Varchar
  Total Subscriber = Int
  Total Videos = Int
  Total Views = Int

  Duplicate count = 0
   
  */


  --1. Row Count Checks

  select count(*)
  as number_of_rows 
  from view_uk_youtubers


  --2. Column Count Check

  Select
	count(*) as column_count
from
	INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_NAME = 'view_uk_youtubers'



--3. Data Type Checks

SELECT
	column_name,
	data_type
from
	INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_NAME = 'view_uk_youtubers'




--Duplicat checks

select channel_name ,
	count(*) as duplicate_count
from view_uk_youtubers
group by channel_name
having count(*) > 1