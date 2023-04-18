Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco feature enable -n=allowGlobalConfirmation
choco install mingw

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex
scoop bucket add cargo-lambda https://github.com/cargo-lambda/scoop-cargo-lambda
scoop install cargo-lambda/cargo-lambda

[Environment]::SetEnvironmentVariable("TARGET_CC", "C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\gcc.exe", "Machine")
[Environment]::SetEnvironmentVariable("TARGET_AR", "C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\ar.exe", "Machine")
