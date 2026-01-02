SELECT
    p.[ProductKey]                       AS ProductKey,
    -- p.[ProductAlternateKey],
    -- p.[ProductSubcategoryKey],
    -- p.[WeightUnitMeasureCode],
    -- p.[SizeUnitMeasureCode],

    p.[EnglishProductName]               AS [Product Name],
    ps.[EnglishProductSubcategoryName]   AS [Product Subcategory],
    pc.[EnglishProductCategoryName]      AS [Product Category],

    -- p.[SpanishProductName],
    -- p.[FrenchProductName],
    -- p.[StandardCost],
    -- p.[FinishedGoodsFlag],
    -- p.[Color],
    -- p.[SafetyStockLevel],
    -- p.[ReorderPoint],
    -- p.[ListPrice],

    p.[Size]                             AS Size,
    -- p.[SizeRange],
    p.[Weight]                           AS Weight,
    p.[DaysToManufacture]                AS TimeToManufacture,
    p.[ProductLine]                      AS LineName,
    -- p.[DealerPrice],
    -- p.[Class],
    -- p.[Style],

    p.[ModelName]                        AS ModelName,

    -- p.[LargePhoto],
    p.[EnglishDescription]               AS ProductDesc,
    -- p.[FrenchDescription],
    -- p.[ChineseDescription],
    -- p.[ArabicDescription],
    -- p.[HebrewDescription],
    -- p.[ThaiDescription],
    -- p.[GermanDescription],
    -- p.[JapaneseDescription],
    -- p.[TurkishDescription],
    -- p.[StartDate],
    -- p.[EndDate],
    -- p.[Status],

    ISNULL(p.[Status], 'Outdated')       AS ProductStatus -- change NULL to 'Outdated'

FROM [AdventureWorksDW2025].[dbo].[DimProduct] AS p
LEFT JOIN [AdventureWorksDW2025].[dbo].[DimProductSubcategory] AS ps
    ON p.[ProductSubcategoryKey] = ps.[ProductSubcategoryKey]
LEFT JOIN [AdventureWorksDW2025].[dbo].[DimProductCategory] AS pc
    ON ps.[ProductCategoryKey] = pc.[ProductCategoryKey]

ORDER BY
    [Product Category],
    [Product Name] ASC;

