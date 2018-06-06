/* Structure Chngs */
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
Drop Table Tbl_M1_Batsman_ScoreBoard_Summary
GO
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

--=========================================================== Procedure Starts Here ==================================================================

ALTER PROCEDURE Proc_FillDropDownList
(
	@Match_ID INT=0,
	@Team_ID  INT=0,
	@Flag	  VARCHAR(100)
)
AS
BEGIN
	
	IF @Flag='T'
	BEGIN

		Select Team_Name
		From Mtbl_TeamDetails

	END

	IF @Flag='M'
	BEGIN

		Select PD.Player_Name
		From Mtbl_TeamPlayers_Mapping PM
		JOIN Mtbl_PlayerDetails PD
			ON PD.Player_ID=PM.Player_ID
		Where Team_ID=@Team_ID	

	END

END

GO
--Exec Proc_Scoreboard_Summary 1,1,'Bat'
ALTER PROCEDURE Proc_Scoreboard_Summary
(	
	@Match_ID  INT=0,
	@Team_ID   INT=0,
	@Flag	   VARCHAR(100)
)
AS
BEGIN
	
	DECLARE
	@Overs VARCHAR(10)

	;With CTE_Overs
	AS	
	(
		Select MAX(SrNo) [SrNo]
		From Tbl_M1_ScoreBoard
		Where Team_ID=@Team_ID
	)
	Select @Overs=CONVERT(Varchar(10),[Over])+'.'+CONVERT(Varchar(10),Ball)+' Overs'
	From CTE_Overs CO
	JOIN Tbl_M1_ScoreBoard SB
		ON SB.SrNo=CO.SrNo

	IF @Flag='Bat'
	BEGIN

		Select PD.Player_Name,Batsman_Runs,Batsman_BallsFaced,Batsman_4s,Batsman_6s,Batsman_Status,Remark
		From Tbl_M1_Batsman_ScoreBoard_Summary BS
		JOIN Mtbl_PlayerDetails PD
			ON PD.Player_ID=BS.Batsman_ID

		Select [Total_Scored] = SUM(Total_Scored+Penalty_Runs),
			   [Total_Wickets]= SUM(Is_Out),
			   [Overs]		  = @Overs,
			   [Extra]		  = CASE WHEN MAX(Final_Decision) In ('Wide','No Ball') 
									 THEN COUNT(Ball)
									 ELSE 0
								END 
		From Tbl_M1_ScoreBoard
		Where Team_ID=@Team_ID

	END

	IF @Flag='Bowl'
	BEGIN

		Select PD.Player_Name,BW.*
		From Tbl_M1_Bowler_ScoreBoard_Summary BW
		JOIN Mtbl_PlayerDetails PD
			ON PD.Player_ID=BW.Bowler_ID
	END

	IF @Flag='Over'
	BEGIN
		
		Select [Over],Ball,Total_Scored+Penalty_Runs [Total_Scored]
		From Tbl_M1_ScoreBoard
		Where Team_ID=@Team_ID
		Order By [Over],Ball

	END

END