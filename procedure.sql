# mysql procedure
# when too many rows exists.
# update table with limitation of row count

drop table if exists foo;
create table foo
(
    id  int unsigned      not null auto_increment primary key,
    val smallint unsigned not null default 0
)
    engine = innodb;

drop procedure if exists update_val;

delimiter #
create procedure update_val()
begin

    declare v_max int unsigned default 1000;
    declare v_counter int unsigned default 0;


    while v_counter < v_max
        do
            start transaction;
            update foo
                inner join (select id, val from foo where val = 0 limit 10000) cc on foo.id = cc.id
            set foo.val = cc.val;
            commit;
        end while;

end #

delimiter ;

call update_val();