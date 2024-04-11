


/****** Script for SelectTopNRows command from SSMS  ******/
SELECT MERLAM_ZON,
COUNT([ID]) as Firms23,
SUM ([EmThisS]) as Employment23,
SUM([SalesYR1]) as Sales23
	  
 FROM [MI].[dbo].[MI23]
 WHERE [MERLAM_ZON] <= 1181 and [MERLAM_ZON]>0 
 GROUP BY [MERLAM_ZON]

ORDER BY [MERLAM_ZON]

---=======================
SELECT [COName],
COUNT([ID]) as Firms23,
SUM ([EmThisS]) as Employment23,
SUM([SalesYR1]) as Sales23
	  
 FROM [MI].[dbo].[MI23]
 WHERE [MERLAM_ZON] <= 1181 and [MERLAM_ZON]>0 
 GROUP BY [COName]

ORDER BY [COName]

---=======================

SELECT [REMICatD],
COUNT([ID]) as Firms23,
SUM ([EmThisS]) as Employment23,
SUM([SalesYR1]) as Sales23
	  
 FROM [MI].[dbo].[MI23]
 WHERE [MERLAM_ZON] <= 1181 and [MERLAM_ZON]>0 
 GROUP BY [REMICatD]

ORDER BY [REMICatD]

---=========================
SELECT [REMICat],
COUNT([ID]) as Firms23,
SUM ([EmThisS]) as Employment23,
SUM([SalesYR1]) as Sales23
	  
 FROM [MI].[dbo].[MI23]
 WHERE [MERLAM_ZON] <= 1181 and [MERLAM_ZON]>0 
 GROUP BY [REMICat]

ORDER BY [REMICat]

---======
SELECT [FourDigNAICS],
COUNT([ID]) as Firms23,
SUM ([EmThisS]) as Employment23,
SUM([SalesYR1]) as Sales23
	  
 FROM [MI].[dbo].[MI23]
 WHERE [MERLAM_ZON] <= 1181 and [MERLAM_ZON]>0 
 GROUP BY [FourDigNAICS]

ORDER BY [FourDigNAICS]