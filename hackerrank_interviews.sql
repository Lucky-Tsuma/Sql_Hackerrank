select con.contest_id, con.hacker_id, con.name, sum(s.total_submissions) total_submissions, sum(s.total_accepted_submissions) total_accepted_submissions, sum(v.total_views) total_views, sum(v.total_unique_views) total_unique_views
from Contests con
inner join Colleges c on con.contest_id = c.contest_id
inner join Challenges ch on ch.college_id = c.college_id
inner join Submission_Stats s on ch.challenge_id = s.challenge_id
inner join View_Stats v on v.challenge_id = s.challenge_id
group by con.contest_id, con.hacker_id, con.name
order by contest_id asc;