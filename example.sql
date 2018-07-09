/* block comment */

/*
multiline
block comment
*/

-- single line comment

-- sample SQL statement
select left(isc.column_name) as first_letter
     , count(*) as the_count
  from information_schema.tables ist
  join information_schema.columns isc
    on ist.table_name = isc.table_name
   and ist.table_schema = isc.table_schema
 where ist.table_name not like '[_]%'
   and ist.table_type = 'BASE TABLE'
 group by left(isc.column_name)  -- first_letter
 order by 1
;
