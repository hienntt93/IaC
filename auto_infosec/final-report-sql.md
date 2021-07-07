CATEGORY: Blind SQLi (time-based)

TIME: 2018-06-18 3:23 AM (3:23) UTC

URL: http://webscantest.com/datastore/search_by_id.php

PAYLOAD: sleep(16000/1000);

METHODOLOGY: Vulnerability detected with Arachni scanner, v. 1.5.1-0.5.12

INSTRUCTIONS TO REPRODUCE:

1. Navigate to "/search_by_id.php"
2. Enter the SQLi payload into the search form.
3. Submit the query.
4. The time-based SQLi code will cause a delay in the SQL thread execution.

ATTACK SCENARIO:
With a time-based SQL injection vulnerability to exploit, a malicious actor could use the time-delay combined with SQL expressions to enumerate sensitive information—authentication credentials, payment data, DB information, and more.

sqlmap -g 'inurl:.php? intext:"mit.com"'
