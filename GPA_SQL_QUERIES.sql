create table gpa_data (abc varchar primary key,
App varchar ,
Category varchar ,
Rating varchar ,
Reviews varchar ,
Size varchar ,
Installs varchar ,
Type varchar ,
Price varchar, 
Content_Rating varchar ,
Genres varchar ,
Last_Updated varchar, 
Current_Ver varchar ,
Android_Ver varchar);


select * from gpa_data;

ALTER TABLE gpa_data 
ALTER COLUMN abc TYPE int USING abc::int, 
ALTER COLUMN Rating TYPE float USING Rating::float ,
ALTER COLUMN Reviews TYPE int USING Reviews::int,
ALTER COLUMN Installs TYPE int USING Installs::int,
ALTER COLUMN Price TYPE float USING Price::float; 



/* Q. Which of the apps have the highest rating in the given dataset? */
SELECT * FROM gpa_data where Rating=5;
/* There are total 268 apps with 5 star Rating*/



/* Q. What are the number of installs for the above apps? Return the apps with the highest reviews on top. */
SELECT * FROM gpa_data WHERE Rating=5 ORDER BY Reviews DESC;
/* 'Rios de fe' is the app with most number of 5 star rating reviews - 141 */



/* Q. Which app has the highest number of reviews? Also, mention the number of reviews and category of that app. */
SELECT * FROM gpa_data ORDER BY Reviews DESC;
/* 'Facebook' of Social category is the app with most number of reviews. */



/* Q. What is the total revenue generated by Google Playstore by hosting apps? */
SELECT SUM(Installs*Price) FROM gpa_data;
/* Total revenue of Google Playstore is $35,22,53,249 */



/* Q. Which category has highest number of installs? Also find out the total number of installs of those categories. */
SELECT SUM(Installs), Category FROM gpa_data GROUP BY Category;
/* 'Game' Category has the highest number of installs-'28,00,20,24,415' */



/* Q. Which Genre has the highest number of published apps? */
SELECT COUNT(App),Genres FROM gpa_data GROUP BY Genres;
/* 'Tools' Genre has the highest number of published apps which is- 840 */



/* Q. Provide the list of all games ordered in such a way that the game that has the highest number of installs is displayed at the top. */
SELECT DISTINCT APP, Installs FROM gpa_data WHERE Category='GAME' ORDER BY Installs DESC; 



/* Q. Provide the list of apps that runs on Android Version 4.0.3 and up. */
SELECT App, Android_Ver FROM gpa_data WHERE Android_Ver= '4.0.3 and up';



/* Q. How many apps from the given datset are free? Also provide the apps which are paid. */
SELECT COUNT(App) as free_apps FROM gpa_data WHERE type='Free';
/* There are total 9208 apps which are free according to the given dataset. */
SELECT COUNT(App) as paid_apps FROM gpa_data WHERE type='Paid';  
/* There are total 728 apps which are paid according to the given dataset. */



/* Q. Which is the best dating app (dating app with highest reviews)? */
SELECT App,MAX(Reviews) FROM gpa_data WHERE Category='DATING' GROUP BY App ORDER BY MAX(Reviews) DESC;
/* Zoosk is the best Dating App , total reviews= 5,16,917. */























































































































