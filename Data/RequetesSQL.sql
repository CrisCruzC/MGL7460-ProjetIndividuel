--LISTE DE CONTRIBUTEURS


Select  substr(author_name,0,instr(author_name,'<')-1) as NomContributeur,
 substr(author_name,instr(author_name,'<')) as CourrielContributeurs from commits
 group by NomContributeur  COLLATE NOCASE
 order by NomContributeur  COLLATE NOCASE


--COMMITS JORDAN WALKE

Select commits.commit_time, substr(author_name,0,instr(author_name,'<')-1) as NomContributeur,
substr(author_name,instr(author_name,'<')) as CourrielContributeur
 from commits
 where nomContributeur like 'Jordan Walke'
order by commit_time desc

--COMMITS Par Contributeur PÉRIOD 1 : De 2013-05-28 au 2014-11-21

Select  substr(author_name,0,instr(author_name,'<')-1) as NomContributeur,
substr(author_name,instr(author_name,'<')) as CourrielContributeur, count(*) NbCommits from commits
where commit_time > '2013-05-28' and commit_time <'2014-11-22'
group by NomContributeur 
order by NbCommits desc 

--COMMITS Par Contributeur PÉRIOD 2 : De 2014-11-22 au 2016-04-07

Select  substr(author_name,0,instr(author_name,'<')-1) as NomContributeur,
 substr(author_name,instr(author_name,'<')) as CourrielContributeur, count(*) NbCommits from commits
 where commit_time >= '2014-11-22' and commit_time <'2016-04-08'
 group by NomContributeur 
order by NbCommits desc 


--COMMITS Par Contributeur PÉRIOD 3 : De 2016-04-08 au 2017-09-26

Select  substr(author_name,0,instr(author_name,'<')-1) as NomContributeur,
 substr(author_name,instr(author_name,'<')) as CourrielContributeur, count(*) NbCommits from commits
 where commit_time >= '2016-04-08' and commit_time <'2017-09-27'
 group by NomContributeur 
order by NbCommits desc

--COMMITS Par Contributeur PÉRIOD 4 : De 2017-09-27 au 2020-02-28

Select  substr(author_name,0,instr(author_name,'<')-1) as NomContributeur,
 substr(author_name,instr(author_name,'<')) as CourrielContributeur, count(*) NbCommits from commits
 where commit_time >= '2017-09-27' 
 group by NomContributeur 
order by NbCommits desc

