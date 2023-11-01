use genzdataset;

show tables;

select * from personalized_info;

select * from learning_aspirations;

select * from manager_aspirations;

select * from mission_aspirations;

select * from personalized_info where currentcountry ="India";

select * from personalized_info where currentcountry ="India" and gender like 'male%';

#question - 1

select count(gender) from personalized_info where currentcountry ="India" and gender like 'male%';

#question -2
select count(gender) from personalized_info where currentcountry ="India" and gender like 'female%';


#question -3
select a.gender,count(1) as cnt 
from personalized_info a
left join learning_aspirations b 
on a.responseid=b.responseid 
where b. careerinfluencefactor ='my parents'
group by a.gender;

#question -4
select a.gender,count(1) as cnt 
from personalized_info a
inner join learning_aspirations b 
on a.responseid = b.responseid 
where b. careerinfluencefactor ='my parents' and a.gender = 'Male'
group by a.gender;


#question -5
select a.gender,count(1) as cnt 
from personalized_info a
left join learning_aspirations b 
on a.responseid=b.responseid 
where b. careerinfluencefactor ='my parents' and a.gender = 'Female'
group by a.gender;


#question -6
select a.gender,count(1) as cnt 
from personalized_info a
left join learning_aspirations b 
on a.responseid=b.responseid 
where b. careerinfluencefactor ='my parents'
group by a.gender;


#question-7
select a.gender,count(1) as cnt 
from personalized_info a
left join learning_aspirations b 
on a.responseid=b.responseid 
where b. careerinfluencefactor ='social media like linkedin'
group by a.gender;


#question-8
select a.gender,count(1) as cnt 
from personalized_info a
left join learning_aspirations b 
on a.responseid=b.responseid 
where b. careerinfluencefactor =('social media like linkedin' and 'influencers who had success career')
group by a.gender;

#question-9

select b. careerinfluencefactor ,count(1) as cnt 
from personalized_info a
left join learning_aspirations b 
on a.responseid=b.responseid 
where b. careerinfluencefactor = 'social media like linkedin' and b.highereducationabroad = 'Yes, I wil'
group by b. careerinfluencefactor;



#question - 10

select b.careerinfluencefactor , count(1) as cnt 
from personalized_info a
left join learning_aspirations b 
on a.responseid=b.responseid 
where b.highereducationabroad = 'Yes, I wil' and b. careerinfluencefactor = 'people from my circle,but not family members' 
group by b. careerinfluencefactor;
