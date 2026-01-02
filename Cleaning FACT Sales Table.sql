SELECT
    [ProductKey]        AS ProductKey,
    [OrderDateKey]      AS OrderDate,
    [DueDateKey]        AS DueDate,
    [ShipDateKey]       AS ShipDate,
    [CustomerKey]       AS CustomerKey,
    -- [PromotionKey],
    -- [CurrencyKey],
    -- [SalesTerritoryKey],
    -- [SalesOrderNumber],
    -- [SalesOrderLineNumber],
    -- [RevisionNumber],
    -- [OrderQuantity],
    -- [UnitPrice],
    -- [ExtendedAmount],
    -- [UnitPriceDiscountPct],
    -- [DiscountAmount],
    -- [ProductStandardCost],
    -- [TotalProductCost],

    [SalesAmount]       AS Sales
    -- [TaxAmt],
    -- [Freight],
    -- [CarrierTrackingNumber],
    -- [CustomerPONumber],
    -- [OrderDate],
    -- [DueDate],
    -- [ShipDate]

FROM [AdventureWorksDW2025].[dbo].[FactInternetSales]
WHERE
    LEFT([OrderDateKey], 4) >= YEAR(GETDATE()) - 2
    -- get sales data from the last 2 years dynamically
;
