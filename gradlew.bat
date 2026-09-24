@echo off
where gradle >nul 2>nul
if %ERRORLEVEL% EQU 0 (
  gradle %*
  exit /b %ERRORLEVEL%
)
echo Gradle nao esta instalado. No GitHub Actions, use o workflow em .github/workflows/build.yml.
exit /b 1
