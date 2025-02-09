-------------------------02 02 2025-------------------------------------
--this new problem
--Weather Station 18 seems really interesting and hard

--I am excited to tackle it!

-------------------------------------02 03 2025---------------------------------

--today arrived my new keyboard.
--the CERAKEY typewritter.

--the keys are ceramic.

--it sounds so good

--it is also very much better ergonomically.


--my fingers are glinding better
--the numbers are easier to reach as well.

--love it.

--ok, problem Weather Observation Station 18.

--my wrists are burning.


--this ias a new keyboard.

----ok,
--one thing I just noticed.

--this problem is labeled as "medium"
--so let's calibrate to that.

--it makes me feel good to work on a problem like this one because it 
--feels very abstract.

--I am definitely going to be challenged.

--Consider p1(a,b) and p2(c,d)
--to be two points on a 2d plane.

--- a happens to equal the minimum value in Northern Latitude.
--- (LAT_N in STATION).

--- b happens to equal the minimum value in Western Longitude.
--- (LONG_W in STATION).

--- c happens to equal the maximum value in Northern Latitude.
--- (LAT_N in STATION).

-- d happens to be the maximum value in Western Longitude.
--- (LONG_W in STATION).

--Query the Manattan Distance 
--between points p1 and p2
--and round it to a scale of 4 decimal places.

--wow, this problem is very, very interesting.

--Hamming Distance: The distance between two points measured along axes at right angles.
--In a plane with p1 at (x1,y1) and p2(x2,y2),
--it is |x1 - x2| + |y1 - y2|.

--ok, so here it laid out.

--I currently have no idea how to go about working on this one
--but I am very excited to figure it out!

--SELECT list: I have to figure out how to do absolute.
--list selections: i don't think there are many things that they are asking for list selections.  

--So, next time I will look up how to do absolute.
--
--seems that the Syntax is ABS ( numeric_expression )

--numeric_expression: an expression of the exact
--numeric or appropriate numeric data type category.

--doesn't look like it can do variables or column names at the moment.
--
-------------------------------------------02 04 2025----------------------------------

--should be resting and using another keyboard.

--but i am using some makeshift resting pads that are great

--ok,
--I currently believe that using the ABS() function will be crucial for this.

--specifically since the Manhattan Distance involves two absolute values being calculated.

--So, 
--I have decided to play around with the absolute value.

USE Weather_Observation_Station_2;
SELECT *
	FROM STATION;

	--Quick SELECT * FROM STATION to get things started.

	
--USE Weather_Observation_Station_2;
--SELECT ABS(LONG_W) AS ABS_LONG_W
--	FROM STATION;

	--ok, ABS() works better than expected.
	--I thought because it was explained as ABS(Number),
	--that it couldn't be a whole field but one cell of the field.

--well, now I believe that I have succeeded in clearing out my only concern.

--let me start to build the rest of the query.

--ok,

--right,
--i now believe that I am going to need to test if I can do a function within the ABS() function.

--USE Weather_Observation_Station_2;
--SELECT ABS(MAX(LONG_W))
--	FROM STATION;

	--ok, I can do functions within ABS() function.

	--cosding while tired is nice.
	--I get to focus on very specific things.

--ok,
--I think next I am going to focus on narrowing down other aspects.

--I will now attempt at getting "a" which is:
--"the minimum value in Northern Latitude

USE Weather_Observation_Station_2;
SELECT MIN(LAT_N) AS 'a MIN(LAT_N)'
	FROM STATION;

	--Ok, I have aquired another part of the puzzle
	--it is going to be interesting how I wrangle these up once I collect them (a,b,c,d).

---------------------------------02 06 2025----------------------------------------

--Ok!
--Super excited to work on this with my new cerakey keyboard.

--I have 'a'

--next, I will get 'b' which is "equal the minimum value in Western Longitude (LONG_W in STATION).

USE Weather_Observation_Station_2;
SELECT MIN(LONG_W) AS 'b MIN(LONG_W)'
	FROM STATION;

	--I just thought about the "round ... to a scale of 4 decimal places."
	--I think I will leave that for the end.

	--I fear that that will be what I will need to play at with at the end.
	--have to place the functions in right order.

--ok,
--I have 'b'

--next is 'c'
--'maximum value in Northern Latirude (LAT_N in STATION).

USE Weather_Observation_Station_2;
SELECT MAX(LAT_N) AS 'c MAX(LAT_N)'
	FROM STATION;

	--Loved the little formatting I did to the column names
	--I feel like it will come back around to bite me
	--but why?

--now, 
--I need 'd' which is "equal ... maximum value in Western Latitude (LONG_W in STATION).

USE	Weather_Observation_Station_2;
SELECT MAX(LONG_W) AS 'd MAX(LONG_W)'
	FROM STATION;

	--sounds good!

--next.

--p1(a,b)
--p2(c,d)

--ok, now I have to intruduce the absolute value
--which I thought I had already played with.
	--yes,
	--lines 122 to 124?

--next,
--absolute value and the subtraction and addition deal?
--two steps in one.

--let me break down the steps further here.

--the first part of the Manhattan Distance is 
-- |x1 - x2|
--which is equivalent to
-- |a - c|

--let me try and get that.

USE Weather_Observation_Station_2;
SELECT ABS(MIN(LAT_N) - MAX(LAT_N)) AS '| a - c|'
	FROM STATION;

	--Ok!
	--I had a great time.

		--really learned a lot from working extra tired what, two days ago?

		--now, I really am able to relax into taking time to break down queries 
		--this is great pacing.

-------------------------------02 09 2025-----------------------------

--lebeling my findings has been super useful when starting up again.

-- I know confidently where to start.

--I guess the labeling is takingplace through the "AS "COLUMN_NAME"" in the SELECT statement.
--really helpfull.

--ok,
--so now I know that eth next step is

--| Y1 - Y2 |
--or,
--|  - d |

--USE Weather_Observation_Station_2;
--SELECT ABS(
--this is starting to get harder to do.

--p1 = (x1,y1)
--p2 = (x2,y2)

--then

--so, the problem is that the Manhattan Distance
--doesn't include anything like MAX, MIN
--it is just "the diatance between two point measured along axes at right angles."

--and this problem is asking for 
--or is rather including.
--the MAX, MIN stuff.

--ok,
--let me then 
--I see that the problem asks us to consider
--P1 = (a, b)
--P2 = (c, d)

--p1 = (x1,y1)
--p2 = (x2,y2)

--a = x1
--b = y1
--c = x2
--d = y2

--right,
--it is the way that the right angle is figured out
--is through the |x1 - x2|
--and the |y1 - y2|

--therefore,
--the next step is the | b - d |
--the MIN, MAX stuff is just threatics.

USE Weather_Observation_Station_2;
SELECT ABS( MIN(LONG_W) - MAX(LONG_W)) AS '| b - d |'
	FROM STATION;

	--there is still a part of me that wants to delve deeper into why
	--this is the Manhattan Distance.
	--or I want to look closer at the Manhattan Distance.

	--I will try to move on.

--ok, I have the parts of the Manhattan Distance.
--Let me now try to put them together.

--I need to work it out or plan it out.


USE Weather_Observation_Station_2;
SELECT ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS( MIN(LONG_W) - MAX(LONG_W)) AS 'Manhattan Distance'
	FROM STATION;

--ok!
--Next time I will work on the "round it to a scale of 4 decimal places."


