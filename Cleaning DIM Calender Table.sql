SELECT
    DateKey,
    FullDateAlternateKey AS Date,
    -- DayNumberOfWeek,
    EnglishDayNameOfWeek AS Day,
    -- SpanishDayNameOfWeek,
    -- FrenchDayNameOfWeek,
    -- DayNumberOfMonth,
    -- DayNumberOfYear,
    WeekNumberOfYear AS Week,
    EnglishMonthName AS Month,
    LEFT(EnglishMonthName, 3) AS MonthShort,
    -- SpanishMonthName,
    -- FrenchMonthName,
    MonthNumberOfYear AS MonthNum,
    CalendarQuarter AS Quarter,
    CalendarYear AS Year
    -- CalendarSemester,
    -- FiscalQuarter,
    -- FiscalYear,
    -- FiscalSemester
FROM AdventureWorksDW2025.dbo.DimDate
WHERE CalendarYear >= 2023; -- years 2023, 2024, 2025

