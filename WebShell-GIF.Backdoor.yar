/*
YARA Rule Set
Author: WCS-SND CyberTeam
Date: 2021-07-19
File: 2621ad896830c17b7bcc22571dedea77
*/
/* Rule Set ----------------------------------------------------------------- */
rule file_2621ad896830c17b7bcc22571dedea77
{
meta:
	description = "WebShell/GIF.Backdoor.GEN - file 2621ad896830c17b7bcc22571dedea77"
	hash1 = "c4fe321aafd36b629643a2361a2b16eab6a25485aef4bec8174dca6f0e7db1db"
strings:
	$hex_0 = { 47 49 46 38 39 61 }
	$a = /([A-Za-z0-9+\/]{4}){3,}([A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?/
condition:
	uint32(0) == 0x38464947 and filesize < 1024KB and
	any of ($*) and 2 of ($*)
}
