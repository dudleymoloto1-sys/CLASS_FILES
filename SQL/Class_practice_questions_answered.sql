--1. Display all properties in the database.

SELECT [PROPERTY_ID]
      ,[COUNTRY]
      ,[PROVINCE]
      ,[CITY]
      ,[PROPERTY_PRICE]
      ,[BEDROOMS]
      ,[BATHROOMS]
      ,[PARKING]
      ,[FLOOR_SIZE]
      ,[Monthly_Repayment]
      ,[Total_Once_off_Costs]
      ,[Min_Gross_Monthly_Income]
  FROM [Property24_SQL_PRACTICE].[dbo].[Property_list]

  --2. Show only the CITY, PROVINCE, and PROPERTY_PRICE columns.
  Select CITY, PROVINCE, PROPERTY_PRICE from Property_list

  --3. List all distinct provinces in the table.
  select distinct PROVINCE from Property_list

  --4. Find all properties located in Gauteng.
  select * from Property_list
  where PROVINCE='Gauteng'

  --5. Show properties priced under R1,500,000.
  select * from Property_list
  where PROPERTY_PRICE<1500000

  --6. List properties with more than 3 bedrooms.
  select * from Property_list
  where BEDROOMS>3

  --7. Find properties with parking for at least 2 cars.
  select * from Property_list
  where PARKING>1

  --8. Show properties where the monthly repayment is greater than R25,000.
  select * from Property_list
  where Monthly_Repayment>25000

  --9. Show all properties ordered by property price from highest to lowest.
  select * from Property_list
  order by PROPERTY_PRICE desc 

  --10. List properties ordered by floor size from smallest to largest.
  select * from Property_list
  order by FLOOR_SIZE asc 

  --11. Show Gauteng properties ordered by monthly repayment.
  select * from Property_list
  where PROVINCE='Gauteng'
  order by Monthly_Repayment

  --12. Find Western Cape properties priced below R3,000,000.
  select * from Property_list
  where PROVINCE='Western Cape' and PROPERTY_PRICE<3000000

  --13. Show KwaZulu-Natal properties with 3 or more bedrooms.
  select * from Property_list
  where PROVINCE='KwaZulu-Natal' and BEDROOMS=3 or BEDROOMS>3 

  --14. Find properties in Limpopo or Free State ordered by property price.
  select * from Property_list
  where PROVINCE='Limpopo' or PROVINCE='Free State'
  order by PROPERTY_PRICE

  --15. Show the 10 most expensive properties.
  select top 10 [PROPERTY_ID]
      ,[COUNTRY]
      ,[PROVINCE]
      ,[CITY]
      ,[PROPERTY_PRICE]
      ,[BEDROOMS]
      ,[BATHROOMS]
      ,[PARKING]
      ,[FLOOR_SIZE]
      ,[Monthly_Repayment]
      ,[Total_Once_off_Costs]
      ,[Min_Gross_Monthly_Income]
  from Property_list
  order by PROPERTY_PRICE desc 

--16. Show the 5 cheapest properties.
 select top 5 [PROPERTY_ID]
      ,[COUNTRY]
      ,[PROVINCE]
      ,[CITY]
      ,[PROPERTY_PRICE]
      ,[BEDROOMS]
      ,[BATHROOMS]
      ,[PARKING]
      ,[FLOOR_SIZE]
      ,[Monthly_Repayment]
      ,[Total_Once_off_Costs]
      ,[Min_Gross_Monthly_Income]
  from Property_list
  order by PROPERTY_PRICE asc 

--17. Show the top 10 properties with the largest floor size.
 select top 10 [PROPERTY_ID]
      ,[COUNTRY]
      ,[PROVINCE]
      ,[CITY]
      ,[PROPERTY_PRICE]
      ,[BEDROOMS]
      ,[BATHROOMS]
      ,[PARKING]
      ,[FLOOR_SIZE]
      ,[Monthly_Repayment]
      ,[Total_Once_off_Costs]
      ,[Min_Gross_Monthly_Income]
  from Property_list
  order by FLOOR_SIZE desc

--18. Which province appears to have the highest priced properties?
--Western Cape

--19. Which cities appear to have the most affordable housing?


--20. What minimum income is typically required for properties priced above R4,000,000?
  select AVG(Min_Gross_Monthly_Income)
  from Property_list
  where PROPERTY_PRICE>4000000
  --R110 639.00
