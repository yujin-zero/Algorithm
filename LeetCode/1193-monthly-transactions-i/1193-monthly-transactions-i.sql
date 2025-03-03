select date_format(trans_date,'%Y-%m') as month, country, count(*) as trans_count, 
    sum(state = 'approved') as approved_count, sum(amount) as trans_total_amount,
    sum(case when state = 'approved' then amount else 0
    end) as approved_total_amount
from Transactions
group by year(trans_date), month(trans_date), country