REM This windows Batch File will deploy the MUS application from Build Folder to Deployment folder
xcopy . "C:\inetpub\wwwroot\MUS" /e /y
