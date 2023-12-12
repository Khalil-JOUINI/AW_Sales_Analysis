-- Cleansed DIM_Products Table --
SELECT 
  [ProductKey], 
  P.ProductAlternateKey as [Product Item code] 
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  , 
  P.[EnglishProductName] as [Product Name], 
  --[SpanishProductName] 
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  
  
  P.[Color] as [Product Color] 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  , 
  P.[Size] as [Prodct Size] --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  , 
  P.[ProductLine] AS [Product Line] --,[DealerPrice]
  --,[Class]
  --,[Style]
  , 
  P.[ModelName] AS [Model Product Name] 
  --,[LargePhoto]
  , 
  P.[EnglishDescription] as [Product Description]
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  , 
  ISNULL (P.Status, 'Outdated') AS Status, 
  ps.EnglishProductSubcategoryName AS [Sub Category], -- Joined in from Sub Category Table
  pc.EnglishProductCategoryName AS [Product Category] -- Joined in from Category Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS P 
  Left join DimProductSubcategory as PS on p.ProductSubcategoryKey = PS.ProductSubcategoryKey 
  Left join DimProductCategory as PC on PC.ProductCategoryKey = PS.ProductCategoryKey 
Order by 
  p.ProductKey asc
