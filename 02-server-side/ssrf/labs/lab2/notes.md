In Lab 2, we use a file upload vulnerability. In this lab, the server only checks the outer part of the file and does not inspect the internal file content properly.

As a result, we can bypass the restriction by modifying the request.

First, I created a file named:


exploite.php


Inside the file, I added the following malicious content:

```php
<?php echo file_get_contents('/home/carlos/secret'); ?>

Then, in Burp Suite, I turned Intercept ON and uploaded the file.

During interception, I modified the request by changing the Content-Type to:

image/jpeg

After that, I forwarded all the requests and turned Intercept OFF.

The file was uploaded successfully.

Then I sent the request to Repeater and forwarded it. In the response, I received the output of the executed PHP code, which revealed the contents of:

/home/carlos/secret
