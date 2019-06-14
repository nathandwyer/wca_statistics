-- Americans who have won competitions (considered as 3x3x3 here) in the most different countries

mysql> SELECT personid, personname, COUNT(DISTINCT competitions.countryid) AS gts 
FROM results, competitions 
WHERE roundtypeid IN ('c', 'f') 
AND eventid='333' 
AND personcountryid='USA' 
AND pos=1 
AND competitions.id=results.competitionid 
GROUP BY personname 
HAVING gts>1 
ORDER BY gts DESC;

