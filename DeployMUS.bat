REM This windows Batch File will create the host environment for Mortgage Underwriting System (MUS) . It is a one time job
REM This Batch file is meant for Windows 7.0 and above
REM The User who is running the Batch file must be the local Administrator of the machine 
REM A website named "Default Web Site" must be existing in local IIS.
REM Now Creating the Application Pool ....... 
C:\Windows\System32\inetsrv\appcmd.exe add apppool /name:"MUSPool"
REM Creating a physical directory for application............
mkdir "C:\inetpub\wwwroot\MUS"
REM Creating an IIS application under "Default Web Site" whose physical path will be "C:\inetpub\wwwroot\MUS".........
C:\Windows\System32\inetsrv\appcmd.exe add app /site.name:"Default Web Site" /path:/MUS /physicalPath:"C:\inetpub\wwwroot\MUS"
