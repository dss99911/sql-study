# mysql procedure
drop table if exists foo;
create table foo
(
    id  int unsigned      not null auto_increment primary key,
    val smallint unsigned not null default 0
)
    engine = innodb;

drop procedure if exists load_foo_test_data;

delimiter #
create procedure load_foo_test_data()
begin

    declare v_max int unsigned default 1000;
    declare v_counter int unsigned default 0;


    while v_counter < v_max
        do
            start transaction;
            insert into foo (val) values (floor(0 + (rand() * 65535)));
            set v_counter = v_counter + 1;
            commit;
        end while;

end #

delimiter ;

call load_foo_test_data();