-- Cleansed Dim_Date --
SELECT
   [DateKey]
      ,[FullDateAlternateKey] AS DATE
      --[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS DAY
      --[SpanishDayNameOfWeek]
      --[FrenchDayNameOfWeek]
      --[DayNumberOfMonth]
      --[DayNumberOfYear]
      --[WeekNumberOfYear]
      ,[EnglishMonthName] AS MONTH
	  ,LEFT(EnglishMonthName,3) AS MONTH_SHORT -- Useful for front end date navigation and front end graphs.
      --[SpanishMonthName]
      --[FrenchMonthName]
      ,[MonthNumberOfYear] AS MONTHNO
      ,[CalendarQuarter] AS QUARTER
      ,[CalendarYear] AS YEAR
      --[CalendarSemester]
      --[FiscalQuarter]
      --[FiscalYear]
      --[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  Where CalendarYear >= 2019