<?php
$result = mail('linki_98i@bk.ru', 'subject', 'message');

if($result)
{
	echo 'все путем!';
}
else
{
	echo 'что-то не так';
}
echo phpinfo();