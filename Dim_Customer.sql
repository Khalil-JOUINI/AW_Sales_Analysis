-- Cleansed DIM_Customers Table -
SELECT 
  c.CustomerKey as [Customer Key], 
  --[GeographyKey],
  --[CustomerAlternateKey]
  --[Title]
  c.FirstName as [First Name] 
  --[MiddleName]
  , 
  c.LastName as [Last Name], 
  c.FirstName + ' ' + c.LastName as Name 
  --[NameStyle]
  --[BirthDate]
  --[MaritalStatus]
  --[Suffix]
  , 
  Case C.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'FEMALE' END AS GENDER 
  --[EmailAddress]
  --[YearlyIncome]
  --[TotalChildren]
  --[NumberChildrenAtHome]
  --[EnglishEducation]
  --[SpanishEducation]
  --[FrenchEducation]
  --[EnglishOccupation]
  --[SpanishOccupation]
  --[FrenchOccupation]
  --[HouseOwnerFlag]
  --[NumberCarsOwned]
  --[AddressLine1]
  --[AddressLine2]
  --[Phone]
  , 
  c.DateFirstPurchase AS DateFirstPurchase 
  --[CommuteDistance]
  ,b.City -- Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] c 
  LEFT JOIN DimGeography b on c.GeographyKey = b.GeographyKey 
Order by 
  [Customer Key] asc
