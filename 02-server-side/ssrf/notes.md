📁 File Upload Vulnerability

🔍 What is it?



A file upload vulnerability happens when a web app allows uploading files without proper validation, letting attackers upload malicious files.



⚠️ Causes

Weak file extension checks

Trusting MIME type

No content validation

Blacklist filtering (bypassable)

Inconsistent validation

💥 Impact

Malicious file upload

Remote Code Execution (RCE)

Server compromise

Data theft / DoS

🧠 Exploitation



Common bypass techniques:



Rename file: shell.php → shell.jpg

Double extension: shell.php.jpg

Modify Content-Type via proxy (e.g., Burp Suite)

🐚 Web Shell Example

<?php system($\_GET\['cmd']); ?>



Usage:



/uploads/shell.php?cmd=id

📌 Prevention

Validate file content, not just extension

Use whitelist (allowed types only)

Store files outside web root

Disable execution in upload folders

