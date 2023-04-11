select * from [Walmart.Sales];

--Yearly Sales

select Year, SUM(Weekly_Sales) as TotalSales from [Walmart.Sales]
Group by Year
order by TotalSales desc;

--Total Sales grouped by Year and Month

select Year, Month , SUM(Weekly_Sales) as TotalSales from [Walmart.Sales]
Group by Year, Month
Order by Year, TotalSales desc;

--Top 10 stores that contributed maximum to the sales (all the three years are included)

select	Top 10 Store, SUM(Weekly_Sales) as TotalSales from [Walmart.Sales]
group by Store 
order by TotalSales desc;

--Average sales calculated when there were Holidays and then grouped by year and month

select Year, Month ,AVG(Weekly_Sales) as AverageSales from [Walmart.Sales]
where Holiday_Flag = 1
group by Year, Month
order by Year, AverageSales desc;

--Yearly Sales calculated when there were Holidays

select Year, SUM(Weekly_Sales) as TotalSales from [Walmart.Sales]
where Holiday_Flag = 1
group by Year
order by TotalSales desc;

--2011 had the maximum sales when there were Holidays, so to further drill down Top 10 stores were calculated to show which store had the maximum sales

select Top 10 Store, SUM(Weekly_Sales) as TotalSales from [Walmart.Sales]
where Year = 2011 and Holiday_Flag = 1
group by Store 
order by TotalSales desc;

--COMPARISON OF SALES

--Yearly Sales when the Fuel Price is greater than average Fuel Price

select Year, SUM(Weekly_Sales) as TotalSales from [Walmart.Sales]
where Fuel_Price > (select AVG(Fuel_Price) from [Walmart.Sales])
Group by Year
order by TotalSales desc;

--Yearly Sales when the Fuel Price is less than average Fuel Price

select Year, SUM(Weekly_Sales) as TotalSales from [Walmart.Sales]
where Fuel_Price < (select AVG(Fuel_Price) from [Walmart.Sales])
Group by Year
order by TotalSales desc;

--Yearly Sales when the Temperature is less than average Temperature

select Year, SUM(Weekly_Sales) as TotalSales from [Walmart.Sales]
where Temperature < (select AVG(Temperature) from [Walmart.Sales])
Group by Year
order by TotalSales desc;

--Yearly Sales when the Temperature is greater than average Temperature

select Year, SUM(Weekly_Sales) as TotalSales from [Walmart.Sales]
where Temperature > (select AVG(Temperature) from [Walmart.Sales])
Group by Year
order by TotalSales desc;

--Yearly Sales when the Unemployment is less than average Unemployment

select Year, SUM(Weekly_Sales) as TotalSales from [Walmart.Sales]
where Unemployment < (select AVG(Unemployment) from [Walmart.Sales])
Group by Year
order by TotalSales desc;

--Yearly Sales when the Unemployment is  greater than average Unemployment

select Year, SUM(Weekly_Sales) as TotalSales from [Walmart.Sales]
where Unemployment > (select AVG(Unemployment) from [Walmart.Sales])
Group by Year
order by TotalSales desc;
