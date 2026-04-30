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

#---------------------------------------------------------------------------------------------------------------------------------------------------------------------

📁 File Upload Vulnerabilities (Flawed Validation)

Many web applications allow users to upload files (images, PDFs, etc.). If validation is weak or missing, attackers can upload malicious files (like web shells) and compromise the server.

⚠️ 1. Insecure File Type Validation

Some applications try to restrict file uploads using checks like:

Content-Type header (e.g., image/png, image/jpeg)
File extension (e.g., .jpg, .png)
❌ Problem:

Both of these can be easily spoofed.

Example:

A malicious file shell.php renamed as image.png
Or Content-Type changed to image/png

Server may still accept it if validation is weak.

⚠️ 2. Relying Only on Client-Side Validation

Some websites validate files using JavaScript before upload.

❌ Problem:
Client-side checks can be bypassed easily using tools like Burp Suite
Request can be modified before reaching the server
⚠️ 3. Poor Content-Type Validation

Applications may only check:

Content-Type: image/png
❌ Problem:

Attacker can change it to:

Content-Type: image/png

while uploading a PHP or JSP file.

Server trusts header → file gets uploaded.

⚠️ 4. Missing File Content Validation

Secure systems should verify:

Actual file signature (magic bytes)
Real file format, not just extension
❌ Problem:

If not checked, attacker can upload:

shell.php.jpg
disguised executable files
⚠️ 5. Dangerous Outcome

If upload directory is executable:

Attacker uploads web shell
Gains remote code execution (RCE)
Full server compromise possible
🛠️ How Attackers Bypass Filters

Using tools like:

Burp Suite Repeater
Intercepting and modifying upload request
Changing filename, extension, Content-Type

#------------------------------------------------------------------------------------------------------------------------------------------------------------------

