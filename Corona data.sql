
-- To avoid any errors, check missing value / null value 
-- Q1. Write a code to check NULL values
SELECT *
FROM Covid19Data
WHERE 
    Country IS NULL OR
    Date IS NULL OR
    TotalCases IS NULL OR
    NewCases IS NULL OR
    TotalDeaths IS NULL OR
    NewDeaths IS NULL OR
    TotalRecovered IS NULL OR
    ActiveCases IS NULL OR
    SeriousCritical IS NULL OR
    TotalCasesPerMillion IS NULL OR
    DeathsPerMillion IS NULL OR
    TotalTests IS NULL OR
    TestsPerMillion IS NULL;

--Q2. If NULL values are present, update them with zeros for all columns. 
UPDATE Covid19Data
SET 
    Country = COALESCE(Country, 'Unknown'),
    Date = COALESCE(Date, 'Unknown'),
    TotalCases = COALESCE(TotalCases, 0),
    NewCases = COALESCE(NewCases, 0),
    TotalDeaths = COALESCE(TotalDeaths, 0),
    NewDeaths = COALESCE(NewDeaths, 0),
    TotalRecovered = COALESCE(TotalRecovered, 0),
    ActiveCases = COALESCE(ActiveCases, 0),
    SeriousCritical = COALESCE(SeriousCritical, 0),
    TotalCasesPerMillion = COALESCE(TotalCasesPerMillion, 0),
    DeathsPerMillion = COALESCE(DeathsPerMillion, 0),
    TotalTests = COALESCE(TotalTests, 0),
    TestsPerMillion = COALESCE(TestsPerMillion, 0);

-- Q3. check total number of rows

-- Q4. Check what is start_date and end_date

-- Q5. Number of month present in dataset

-- Q6. Find monthly average for confirmed, deaths, recovered

-- Q7. Find most frequent value for confirmed, deaths, recovered each month 

-- Q8. Find minimum values for confirmed, deaths, recovered per year

-- Q9. Find maximum values of confirmed, deaths, recovered per year

-- Q10. The total number of case of confirmed, deaths, recovered each month

-- Q11. Check how corona virus spread out with respect to confirmed case
--      (Eg.: total confirmed cases, their average, variance & STDEV )

-- Q12. Check how corona virus spread out with respect to death case per month
--      (Eg.: total confirmed cases, their average, variance & STDEV )

-- Q13. Check how corona virus spread out with respect to recovered case
--      (Eg.: total confirmed cases, their average, variance & STDEV )

-- Q14. Find Country having highest number of the Confirmed case

-- Q15. Find Country having lowest number of the death case

-- Q16. Find top 5 countries having highest recovered case
