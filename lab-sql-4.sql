Use sakila;

# 1.Get film ratings.
select rating
from film
limit 10;

# 2.Get release years.
select release_year
from film
limit 10;

# 3.Get all films with ARMAGEDDON in the title.
select title
from film 
where title like 'ARMAGEDDON%';

# 4.Get all films with APOLLO in the title
select title
from film 
where title like '%APOLLO%';

# 5.Get all films which title ends with APOLLO.
select title
from film 
where title like '%APOLLO';

# 6.Get all films with word DATE in the title.
select title
from film
where title like '% DATE %'
or title like 'DATE %'
or title like '% DATE';

# 7.Get 10 films with the longest title.
select title
from film
order by length(title) desc
limit 10;

# 8.Get 10 the longest films.
select film_id , title, length from film 
order by length desc limit 10;

select max(length), count(*) from film;

# 9.How many films include Behind the Scenes content?
select special_features from film where special_features like "%benind the scenes%";

select special_features from film where special_features regexp "benind the scenes";

# 10.List films ordered by release year and title in alphabetical order.
select release_year,title from film order by release_year;