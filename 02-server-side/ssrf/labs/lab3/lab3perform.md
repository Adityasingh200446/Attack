Lab: OS Command Injection

In this lab, I performed an OS Command Injection attack. The vulnerability exists because the application does not properly validate user input before using it in a system command.

Steps to Reproduce
Go to the website and use the “Check Stock” feature for any product.
Turn intercept ON in your proxy (e.g., Burp Suite) and capture the request.
The request looks like:
POST /stockstatus HTTP/1.1

productId=381&storeId=1
Modify the storeId parameter to inject a command:
1|whoami
Forward the request.
Result

The server executes the injected command and returns the output of
