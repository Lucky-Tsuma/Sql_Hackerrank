SELECT * FROM 
(
SELECT con.contest_id CONID, con.hacker_id HACKID, con.name NM, 
    --Find the total submissions
    (SELECT SUM(total_submissions) FROM Submission_Stats SS INNER JOIN [Challenges] Chal 
        ON SS.challenge_id = Chal.challenge_id INNER JOIN [Colleges] Col ON Col.college_id = 
        Chal.college_id INNER JOIN [Contests] ON Contests.contest_id = Col.contest_id 
        WHERE Col.contest_id = con.contest_id)  total_submissions, 
    --Find the total accepted submissions
    (SELECT SUM(total_accepted_submissions) FROM Submission_Stats SS INNER JOIN [Challenges] Chal 
        ON SS.challenge_id = Chal.challenge_id INNER JOIN [Colleges] Col ON Col.college_id = 
        Chal.college_id INNER JOIN [Contests] ON Contests.contest_id = Col.contest_id 
        WHERE Col.contest_id = con.contest_id)  total_accepted_submissions,
    --Find the total views
    (SELECT SUM(total_views) FROM View_Stats SS INNER JOIN [Challenges] Chal 
        ON SS.challenge_id = Chal.challenge_id INNER JOIN [Colleges] Col ON Col.college_id = 
        Chal.college_id INNER JOIN [Contests] ON Contests.contest_id = Col.contest_id 
        WHERE Col.contest_id = con.contest_id)  total_views, 
    --Find total unique views
    (SELECT SUM(total_unique_views) FROM View_Stats SS INNER JOIN [Challenges] Chal 
        ON SS.challenge_id = Chal.challenge_id INNER JOIN [Colleges] Col ON Col.college_id = 
        Chal.college_id INNER JOIN [Contests] ON Contests.contest_id = Col.contest_id 
        WHERE Col.contest_id = con.contest_id)  total_unique_views
    
FROM [Contests] con 
    ) data 
WHERE  (total_submissions <> 0 AND total_accepted_submissions <> 0 AND total_views <> 0 AND total_unique_views <> 0)
ORDER BY CONID;
