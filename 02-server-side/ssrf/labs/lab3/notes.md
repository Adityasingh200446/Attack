What is OS Command Injection?

OS Command Injection (also called shell injection) is a vulnerability that allows an attacker to execute operating system commands on the server running an application.

This can:

Compromise the application
Access or modify data
Attack other systems in the same infrastructure (pivoting)
Example

Suppose a website uses this URL to check stock:

https://insecure-website.com/stockstatus?productID=381&storeID=29

The server might run a command like:

stockreport.pl 381 29
Vulnerable Scenario

If the application does not validate input, an attacker can inject commands.

Malicious input:
& echo aiwefulgh
Resulting command:
stockreport.pl & echo aiwefulgh & 29
Output Explanation
stockreport.pl fails (missing product ID)

Injected command runs:

aiwefulgh
29: command not found appears
Why & is used
& separates commands in the shell
It allows the injected command to execute independently
Reduces chances of failure due to syntax errors
