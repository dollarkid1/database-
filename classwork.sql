#1
select * from movie;
select mov_title, mov_year
from movie;

#2
select mov_year
from movie
where mov_title = "Avatar";

#3
select * from movie where mov_year = 1999;

#4
select * from movie where mov_year < 1998;

#5
select rev_name from reviewer
where rev_id in (select rev_id from rating
where rev_stars >=7);


#6
select movie.mov_title, reviewer.rev_name
from movie,reviewer;

#7
select mov_title from movie
where mov_id in (select mov_id from rating
where num_o_ratings is null);

#8
select rev_name from reviewer
where rev_id in (select rev_id from rating
where rev_stars is null);

#9
select dir_lname from directors;