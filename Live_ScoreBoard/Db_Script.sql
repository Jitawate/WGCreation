Create Database Live_ScoreBoard
GO

Create Table Mtbl_TeamDetails
(
	Team_ID		 INT IDENTITY(1,1),
	Team_Name	 VARCHAR(500),
	Team_MembCnt INT,
	Team_Origin  VARCHAR(100),
	Created_Dt   DATETIME,
	Updated_Dt	 DATETIME
)
GO
Insert Into Mtbl_TeamDetails
Values('Ghatkopar XI',15,'Ghatkopar',GETDATE(),GETDATE()),('Mulund XI',15,'Mulund',GETDATE(),GETDATE()),('Bhandup XI',15,'Bhandup',GETDATE(),GETDATE())
GO
Select * From Mtbl_TeamDetails
GO
Create Table Mtbl_PlayerDetails
(
	Player_ID			INT IDENTITY(1,1),
	Player_Name			VARCHAR(1000),
	Player_DOB			DATETIME		DEFAULT '2000-01-01',
	Player_Age			INT				DEFAULT 0,
	Player_Height		VARCHAR(100)	DEFAULT '',
	Player_City			VARCHAR(1000)   DEFAULT '',
	Player_PhoneNo		VARCHAR(100)	DEFAULT '',
	Player_JerseyNo		VARCHAR(10)		DEFAULT '',
	Player_Batting		VARCHAR(100)	DEFAULT '',
	Player_Bowling		VARCHAR(100)	DEFAULT '',
	Player_Role			VARCHAR(100)	DEFAULT '',
	Player_TotalRuns	INT				DEFAULT 0,
	Player_BatAvg		NUMERIC(10,2)	DEFAULT 0.00,
	Player_100s			INT				DEFAULT 0,
	Player_50s			INT				DEFAULT 0,
	Player_TopScore		INT				DEFAULT 0,
	Player_TotalWickets INT				DEFAULT 0,
	Player_BowAvg		NUMERIC(10,2) 	DEFAULT 0.00,
	Player_TotalCatches INT				DEFAULT 0,
	Created_Dt			DATETIME        DEFAULT GETDATE(),
	Updated_Dt			DATETIME		DEFAULT GETDATE()
)
GO
Insert Into Mtbl_PlayerDetails
Values
('Sachin Tendulkar','1973-04-24',45,'5.5','Mumbai','','10','Right Handed','Right Arm Medium','Batsman',25396,57.84,100,164,200,154,44.48,140,GETDATE(),GETDATE()),
('Virat Kohli','1989-04-24',28,'5.2','Mumbai','','08','Right Handed','Right Arm Medium','Batsman',5396,87.82,40,64,190,54,24.48,40,GETDATE(),GETDATE()),
('Ashish Nehra','1980-04-24',38,'6.2','Mumbai','','28','Right Handed','Right Arm Fast','Bowler',396,15.82,1,2,112,254,24.48,14,GETDATE(),GETDATE())
GO
Select *
From Mtbl_PlayerDetails
GO
Create Table Mtbl_TeamPlayers_Mapping
(
	SrNo	   INT IDENTITY(1,1),
	Team_ID	   INT,
	Player_ID  INT,
	Created_Dt DATETIME,
	Updated_Dt DATETIME
)
GO
Insert Into Mtbl_TeamPlayers_Mapping
Values(1,1,GETDATE(),GETDATE()),(1,2,GETDATE(),GETDATE()),(2,3,GETDATE(),GETDATE())
GO
Select *
From Mtbl_TeamPlayers_Mapping
GO
Create Table Mtbl_MatchDetails
(
	SrNo INT	IDENTITY(1,1),
	Mat_Team1ID INT,
	Mat_Team2ID INT,
	Mat_Venue	VARCHAR(1000),
	Created_Dt	DATETIME,
	Updated_Dt	DATETIME
)
GO
Insert Into Mtbl_MatchDetails
Values(1,2,'Mumbai',GETDATE(),GETDATE())
GO
Select *
From Mtbl_MatchDetails
GO
Drop Table Tbl_M1_ScoreBoard
GO
Create Table Tbl_M1_ScoreBoard
(
	SrNo			INT IDENTITY(1,1),
	Team_ID			INT,
	Batsman_ID		INT,
	Bowler_ID		INT,
	[Over]			INT,
	Ball			INT,
	Fielder_ID		INT,
	Bats_Scored		INT,
	Total_Scored    INT,
	Final_Decision  VARCHAR(100),
	Penalty_Runs    INT,
	Is_Out			INT,
	Created_Dt		DATETIME,
	Updated_Dt		DATETIME
)
GO
Insert Into Tbl_M1_ScoreBoard
Values(1,1,3,1,1,0,4,4,'Four',0,0,GETDATE(),GETDATE()),(1,1,3,1,2,0,1,1,'',0,0,GETDATE(),GETDATE()),(1,2,3,1,3,3,0,0,'Catch',0,1,GETDATE(),GETDATE())
GO
Select *
From Tbl_M1_ScoreBoard
GO
Drop Table Tbl_M1_Batsman_ScoreBoard_Summary
Create Table Tbl_M1_Batsman_ScoreBoard_Summary
(
	SrNo				INT IDENTITY(1,1),
	Team_ID				INT,
	Batsman_ID			INT,
	Batsman_Runs		INT,
	Batsman_BallsFaced  INT,
	Batsman_Avg			NUMERIC(10,2),
	Batsman_4s			INT,
	Batsman_6s			INT,	
	Batsman_Status		VARCHAR(100),
	Remark				VARCHAR(100),
	Created_Dt			DATETIME,
	Updated_Dt			DATETIME
)
GO
Insert Into Tbl_M1_Batsman_ScoreBoard_Summary
Values(1,1,5,3,82.15,1,0,'Out','Caught by bowler(Ashish Nehra)',GETDATE(),GETDATE()),(1,2,1,1,100.00,0,0,'Not Out','',GETDATE(),GETDATE())
GO
Select *
From Tbl_M1_Batsman_ScoreBoard_Summary
Go
Drop Table Tbl_M1_Bowler_ScoreBoard_Summary
GO
Create Table Tbl_M1_Bowler_ScoreBoard_Summary
(
	SrNo				INT IDENTITY(1,1),
	Team_ID				INT,
	Bowler_ID			INT,
	Bowler_BallsBowled  NUMERIC(10,1),
	Bowler_TotalRuns	INT,
	Bowler_TotalWickets	INT,
	Bowler_Avg			NUMERIC(10,2),
	Remark				VARCHAR(100),
	Created_Dt			DATETIME,
	Updated_Dt			DATETIME
)
GO
Insert Into Tbl_M1_Bowler_ScoreBoard_Summary
Values (2,3,0.3,6,1,25.22,'',GETDATE(),GETDATE())
GO
Select *
From Tbl_M1_Bowler_ScoreBoard_Summary