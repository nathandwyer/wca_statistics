
mysql> SELECT personid, personname, count(distinct competitions.countryid) AS gts 
FROM results, competitions 
WHERE roundtypeid IN ('c', 'f') 
AND eventid='333' 
AND personcountryid='USA' and pos=1 
AND competitions.id=results.competitionid 
GROUP BY personname 
HAVING gts>1 
ORDER BY gts DESC;

