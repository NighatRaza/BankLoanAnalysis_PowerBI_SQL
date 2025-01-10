-- select * from bank_loan_data;
-- show databases;
-- create database BankLoanDB;
-- use bankloandb;

 -- total loan application query
--  select count(id) as Total_Loan_Applications from bank_loan_data;
-- select count(issue_date) as MTD_Total_Loan_Applications from bank_loan_data where month(issue_date) = 12 and year(issue_date)=2021;
-- select count(issue_date) as PMTD_Total_Loan_Applications from bank_loan_data where month(issue_date) = 11 and year(issue_date)=2021;
-- (mtd-pmtd/pmtd)

-- total funded amount
-- select sum(loan_amount) as Total_Funded_Amount from bank_loan_data;  
-- select sum(loan_amount) as MTD_Total_Funded_Amount from bank_loan_data where month(issue_date) = 12 and year(issue_date)=2021;  
-- select sum(loan_amount) as PMTD_Total_Funded_Amount from bank_loan_data where month(issue_date) = 11 and year(issue_date)=2021;  

-- total amount received
-- select sum(total_payment) as Total_Amount_Received from bank_loan_data
-- select sum(total_payment) as MTD_Total_Amount_Received from bank_loan_data where month(issue_date) = 12 and year(issue_date)=2021;  
-- select sum(total_payment) as PMTD_Total_Amount_Received from bank_loan_data where month(issue_date) = 11 and year(issue_date)=2021;  
 
 -- average interest rate
-- select round(avg(int_rate)*100,2) as Average_Interest_Rate from bank_loan_data;
-- select round(avg(int_rate)*100,2) as MTD_Average_Interest_Rate from bank_loan_data where month(issue_date) = 12 and year(issue_date)=2021;  
-- select round(avg(int_rate)*100,2) as PMTD_Average_Interest_Rate from bank_loan_data where month(issue_date) = 11 and year(issue_date)=2021;  

-- average debt to income ratio 
-- select round(avg(dti)*100,2) as Average_Debt_To_Income_Ratio from bank_loan_data;
-- select round(avg(dti)*100,2) as MTD_Average_Debt_To_Income_Ratio from bank_loan_data where month(issue_date) = 12 and year(issue_date)=2021;  
-- select round(avg(dti)*100,2) as PMTD_Average_Debt_To_Income_Ratio from bank_loan_data where month(issue_date) = 11 and year(issue_date)=2021;  

-- good loan
-- select count(id) as Good_Loan_Applications from bank_loan_data where loan_status='Fully Paid' or loan_status='Current';
-- select (count(case when loan_status='Fully Paid' or loan_status='Current' then id end)*100) / count(id) as Good_Loan from bank_loan_data ;
-- select sum(loan_amount) as Good_Loan_Funded_Amount from bank_loan_data where loan_status='Fully Paid' or loan_status='Current';
-- select sum(total_payment) as Good_Loan_Amount_Received from bank_loan_data where loan_status='Fully Paid' or loan_status='Current';

-- bad loan
-- select count(id) as Bad_Loan_Applications from bank_loan_data where loan_status='Charged Off';
-- select (count(case when loan_status='Charged Off' then id end)*100) / count(id) as Bad_Loan from bank_loan_data;
-- select sum(loan_amount) as Bad_Loan_Funded_Amount from bank_loan_data where loan_status='Charged Off';
-- select sum(total_payment) as Bad_Loan_Amount_Received from bank_loan_data where loan_status='Charged Off';

-- loan status 
-- select loan_status,
-- count(id) as Total_Loan_Applications,
-- sum(total_payment) as Total_Amount_Received,
-- sum(loan_amount) as Total_Funded_Amount,
-- avg(int_rate * 100) as Interest_Rate,
-- avg(dti * 100) as DTI
-- from bank_loan_data
-- group by loan_status;

-- current month status
-- select loan_status,
-- sum(total_payment) as MTD_Total_Amount_Received,
-- sum(loan_amount) as MTD_Total_Funded_Amount
-- from bank_loan_data
-- where month(issue_date) = 12
-- group by loan_status; 
