
/*
% - 0 or more char
_ - any single char
*/

use countries;
-- searching for records where the name contains australia
select * from countries.countries where name like 'Australia';

select * from countries.countries where name like '%British%';

-- searching for records where the name contains comma
select * from countries.countries where name like '%,%';

-- searching for records where the name contains six characters
select * from countries.countries where name like '______';

-- searching for records where the name starting from A
select * from countries.countries where name like 'A%';




