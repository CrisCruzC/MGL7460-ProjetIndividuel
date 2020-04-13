-- REQUETES CONTRIBUTEURS PRINCIPAUX PAR PERIODE

Select '2013-2014' as Period, substr(author_name,0,instr(author_name,'<')-1) as NomContributeur,
substr(author_name,instr(author_name,'<')) as CourrielContributeur, count(*) NbCommits from commits
where commit_time > '2013-05-28' and commit_time <'2014-11-22'
group by NomContributeur 
having count(*) >= 10
union all
Select '2014-2016' as Period, substr(author_name,0,instr(author_name,'<')-1) as NomContributeur,
 substr(author_name,instr(author_name,'<')) as CourrielContributeur, count(*) NbCommits from commits
 where commit_time >= '2014-11-22' and commit_time <'2016-04-08'
 group by NomContributeur 
 having count(*) >= 10
 union ALL
Select '2016-2017' as Period, substr(author_name,0,instr(author_name,'<')-1) as NomContributeur,
 substr(author_name,instr(author_name,'<')) as CourrielContributeur, count(*) NbCommits from commits
 where commit_time >= '2016-04-08' and commit_time <'2017-09-27'
 group by NomContributeur 
having count(*) >= 10
UNION ALL
Select '2017-2018' as Period, substr(author_name,0,instr(author_name,'<')-1) as NomContributeur,
 substr(author_name,instr(author_name,'<')) as CourrielContributeur, count(*) NbCommits from commits
 where commit_time >= '2017-09-27' AND commit_time <'2019-01-01' group by NomContributeur 
having count(*) >= 10
UNION ALL
Select '2019-2020' as Period, substr(author_name,0,instr(author_name,'<')-1) as NomContributeur,
 substr(author_name,instr(author_name,'<')) as CourrielContributeur, count(*) NbCommits from commits
 where commit_time >='2019-01-01' 
 group by NomContributeur 
having count(*) >= 10
order by  period, NbCommits desc.

-- REQUETES OBTENTION DE TOUS LES CONTRIBUTEURS
Select substr(author_name,0,instr(author_name,'<')-1) as NomContributeur,
substr(author_name,instr(author_name,'<')) as CourrielContributeur, count(*) NbCommits from commits
group by NomContributeur
order by NbCommits DESC

Select substr(author_name,0,instr(author_name,'<')-1) as NomContributeur,
substr(author_name,instr(author_name,'<')) as CourrielContributeur,sum(added_lines)as Ajout, sum(deleted_lines) as Suppression, count(*) NbCommits from commits
group by NomContributeur
order by NbCommits DESC
