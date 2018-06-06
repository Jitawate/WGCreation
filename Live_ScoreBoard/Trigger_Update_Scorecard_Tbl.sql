

USE Live_ScoreBoard
GO
/* Structural Changes */ 

Alter Table Tbl_M1_ScoreBoard
Add Bowler_Team_ID INT

Update Tbl_M1_ScoreBoard
Set Bowler_Team_ID=2
 
 
 --=========================================================================================================================================================================


 CREATE TRIGGER Trg_Update_Bat_Bowl_Summary  
 ON Tbl_M1_ScoreBoard  
 AFTER INSERT,UPDATE,DELETE  
 AS  
 BEGIN     
	
	SET NOCOUNT ON;

	;WITH CTE_Bats_Stats   
	AS   
	(    
		Select Team_ID,Batsman_ID,SUM(Bats_Scored) [Bats_Scored],COUNT(Ball) [Batsman_BallsFaced],        
			   CONVERT(NUMERIC(10,2),(CONVERT(NUMERIC(10,2),SUM(Bats_Scored))/CONVERT(NUMERIC(10,2),COUNT(Ball)))*100.00) [Batsman_Avg],        
			   SUM(CASE WHEN Bats_Scored=4 THEN 1 ELSE 0 END)     [Batsman_4s],        
			   SUM(CASE WHEN Bats_Scored=6 THEN 1 ELSE 0 END)     [Batsman_6s],        
			   CASE WHEN SUM(IS_Out)=1    THEN 'Out' ELSE 'Not Out' END  [Is_Out],        
			   '' [Remark]   
		From Tbl_M1_ScoreBoard    
		Group By Team_ID,Batsman_ID     
	)   
	UPDATE BS   
	SET Batsman_Runs	  = CB.Bats_Scored,    
		Batsman_BallsFaced= CB.Batsman_BallsFaced,    
		Batsman_Avg		  = CB.Batsman_Avg,    
		Batsman_4s		  = CB.Batsman_4s,    
		Batsman_6s		  = CB.Batsman_6s,    
		Batsman_Status    = CB.Is_Out,    
		Updated_Dt		  = GETDATE(),
		Remark			  = ''   
	From Tbl_M1_Batsman_ScoreBoard_Summary BS   
	JOIN CTE_Bats_Stats CB    
		ON CB.Team_ID=BS.Team_ID And CB.Batsman_ID=BS.Batsman_ID     
		
	
	;WITH CTE_Bowler_Stats   
	AS   
	(    
		Select Bowler_Team_ID,Bowler_ID,
			   CASE WHEN CONVERT(VARCHAR(10),MAX([Over]))='1' THEN '0' ELSE CONVERT(VARCHAR(10),MAX([Over])) END +'.'+CONVERT(VARCHAR(10),MAX(Ball)) [Bowler_BallsBowled],
			   SUM(Total_Scored) [Bowler_TotalRuns],        
			   SUM(IS_Out) [Bowler_TotalWickets],        
			   CONVERT(NUMERIC(10,2),(CONVERT(NUMERIC(10,2),SUM(Total_Scored))/CONVERT(NUMERIC(10,2),(MAX([Over])*6)+MAX(Ball)))*100.00) [Bowler_Avg],        
			   '' [Remark]    
		From Tbl_M1_ScoreBoard    
		Group By Bowler_Team_ID,Bowler_ID   
	)   
	UPDATE BS   
	SET Bowler_BallsBowled = CB.Bowler_BallsBowled,    
		Bowler_TotalRuns   = CB.Bowler_TotalRuns,    
		Bowler_TotalWickets= CB.Bowler_TotalWickets,    
		Bowler_Avg		   = CB.Bowler_Avg,    
		Updated_Dt		   = GETDATE()   
	From Tbl_M1_Bowler_ScoreBoard_Summary BS   
	JOIN CTE_Bowler_Stats CB    
		ON CB.Bowler_Team_ID=BS.Team_ID And CB.Bowler_ID=BS.Bowler_ID    

END