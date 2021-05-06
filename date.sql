
//get -180 day from the date
select DATE_ADD('DAY', -180, CAST(FROM_UNIXTIME(report_file_time/1000) AS DATE)) from dates
select  DATE_DIFF('MONTH', report_dt, CAST(transaction_date AS DATE)) from dates



// mysql
SELECT DATE_FORMAT("2017-06-15", "%Y-%m-%d");#2017-06-15
SELECT DATE_ADD("2017-06-15", INTERVAL 10 DAY);