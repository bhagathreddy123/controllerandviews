Rails version: 6.0.3.5
Ruby version: ruby 2.7.1p83
Store Data in Cookies
--------------------
HTML: Stateless
each HTTP request is distinct.
State is not preserved. no previous information.
we can keep track of data between requests using
Cookies
Sessions.
===============
Cookies:
 Cookies allow us to preserve the state of information.

webserver sends data to the browser, which then saves it in a cookie.
browser sends cookie data with each future request to that web server.

Cookies in rails

cookies[:username] = "Jsmith"

@username = cookies[:username]

complex way of setting cookie below.


cookies[:username] = {
	:value => "jsmith",
	:expire => 1.week.from_now
}

Limitation of cookies:

maximum data size: 4K

Resides on the users computer.
can be deleted, read or altered.

Advice on Cookies
__________________
user cookies to preserve state and for efficiency.
store onlly small piece of data 
do not store model instance.
do not store sensitive data.
do not trust cookie data.

Sessions

Web server sends a session ID to the browser, which then saves it in a cookie
Browser sends session ID with each future request to that web server.

web server uses session ID to locate the session file.

Common Limitations of Sessions.
Require time to retrieve the session file.
Session files accumulate.
Session cookie resides  on the users computer
Session cookie can be deleted or hijacked.
