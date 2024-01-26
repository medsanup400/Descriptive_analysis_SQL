
  
select 
a.name, 
b.grade,
a.marks from students a join grades b on a.marks between b.min_mark and b.max_mark
where b.grade >= 8

union all 

select 
null as name, 
b.grade,
a.marks from students a join grades b on a.marks between b.min_mark and b.max_mark
where b.grade < 8
order by b.grade desc, a.name asc, a.marks asc
