-- use bankloandb;
select * from bank_loan_data;

-- monthly trends by issue date 
-- select 
-- month(issue_date) as Month_Num,
-- MONTHNAME(issue_date) as Month_Name,
-- count(id) as Total_Loan_Applications,
-- sum(Loan_Amount) as Total_Funded_Amount,
-- sum(total_payment) as Total_Received_Amount
-- from bank_loan_data
-- group by Month_Num, MONTHNAME(issue_date)
-- order by Month_Num;

-- regional analysis by state 
-- select 
-- address_state as Region,
-- count(id) as Total_Loan_Applications,
-- sum(Loan_Amount) as Total_Funded_Amount,
-- sum(total_payment) as Total_Received_Amount
-- from bank_loan_data
-- group by Region
-- order by Total_Loan_Applications desc;

-- loan term analysis
-- select 
-- term,
-- count(id) as Total_Loan_Applications,
-- sum(Loan_Amount) as Total_Funded_Amount,
-- sum(total_payment) as Total_Received_Amount
-- from bank_loan_data
-- group by term
-- order by term; 

-- employee length analysis 
-- select 
-- emp_length,
-- count(id) as Total_Loan_Applications,
-- sum(Loan_Amount) as Total_Funded_Amount,
-- sum(total_payment) as Total_Received_Amount
-- from bank_loan_data
-- group by emp_length
-- order by Total_Loan_Applications desc; 

-- loan purpose breakdown
-- select 
-- purpose,
-- count(id) as Total_Loan_Applications,
-- sum(Loan_Amount) as Total_Funded_Amount,
-- sum(total_payment) as Total_Received_Amount
-- from bank_loan_data
-- group by purpose
-- order by Total_Loan_Applications desc; 

-- home ownership analysis 
-- select 
-- home_ownership,
-- count(id) as Total_Loan_Applications,
-- sum(Loan_Amount) as Total_Funded_Amount,
-- sum(total_payment) as Total_Received_Amount
-- from bank_loan_data
-- group by home_ownership
-- order by Total_Loan_Applications desc;

