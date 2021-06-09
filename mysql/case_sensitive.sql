# mysql seems case insensitive defaultly
# for compare string case sensitive. use 'BINARY'
select * from temp
where BINARY a = "ABC"