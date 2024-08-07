select * from top_uk_youtubers;

 /*
 #Data Cleaning Steps
 
 1.Remove Unnecessary Columns
 2. Extract the YouTube Channel Names from the first column
 3. Rename the column names
 
 */


 create view view_uk_youtubers as

 select 
 cast(substring(NOMBRE, 1, CHARINDEX ('@' , NOMBRE)-1) as varchar(100)) as channel_name, 
 total_subscribers, 
 total_views, 
 total_videos
 FROM top_uk_youtubers







 -----







