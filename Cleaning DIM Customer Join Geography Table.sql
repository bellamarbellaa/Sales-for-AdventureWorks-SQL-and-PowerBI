SELECT
    c.[CustomerKey]              AS CustomerKey,
    -- c.[CustomerAlternateKey],
    -- c.[GeographyKey],

    c.[FirstName]                AS FirstName,
    c.[LastName]                 AS LastName,
    c.[FirstName] + ' ' + c.[LastName] AS FullName, -- combined first and last name
    c.[BirthDate],

    CASE c.[Gender]
        WHEN 'M' THEN 'Male'
        WHEN 'F' THEN 'Female'
        ELSE 'Unknown'
    END AS Gender,

    c.[TotalChildren]            AS Children,
    -- c.[NumberChildrenAtHome],

    c.[EnglishEducation]         AS Education,
    -- c.[FrenchEducation],
    -- c.[SpanishEducation],

    -- c.[HouseOwnerFlag],
    -- c.[NumberCarsOwned],
    -- c.[AddressLine1],
    -- c.[AddressLine2],
    -- c.[Phone],

    c.[DateFirstPurchase]        AS DateFirstPurchase,
    c.[CommuteDistance]          AS CommuteDistance,

    g.[City]                     AS CustomerCity
FROM [AdventureWorksDW2025].[dbo].[DimCustomer] AS c
LEFT JOIN [AdventureWorksDW2025].[dbo].[DimGeography] AS g
    ON c.[GeographyKey] = g.[GeographyKey]
ORDER BY
    CustomerCity,
    CustomerKey ASC;


