.mode columns
.headers on

SELECT educational_attainment, AVG(spouse_or_partner_present)
FROM CPS
JOIN respondents
ON cps.case_id = respondents.case_id
WHERE (spouse_or_partner_present = 1 OR spouse_or_partner_present = 2)
AND educational_attainment > 0 AND cps.line_no = 1
GROUP BY educational_attainment;
