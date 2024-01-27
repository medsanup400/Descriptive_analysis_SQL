
select s.Name  from students s
join friends f on s.ID = f.ID
join packages p on f.ID = p.ID
join packages p1 on f.Friend_ID = p1.ID
where p.Salary < p1.salary
order by p1.salary

