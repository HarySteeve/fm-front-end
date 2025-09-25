@echo off
REM --- Définir le chemin du WAR généré et le dossier de Tomcat ---
set WAR_FILE=target\fm-front-end.war
set TOMCAT_WEBAPPS=C:\tomcat\webapps
set WAR_NAME=fm-front-end.war
set DEPLOY_DIR=%TOMCAT_WEBAPPS%\fm-front-end

REM --- Supprimer l'ancien WAR s'il existe ---
if exist "%TOMCAT_WEBAPPS%\%WAR_NAME%" (
    echo Suppression de l'ancien WAR...
    del /F /Q "%TOMCAT_WEBAPPS%\%WAR_NAME%"
)

REM --- Supprimer l'ancien dossier de déploiement s'il existe ---
if exist "%DEPLOY_DIR%" (
    echo Suppression de l'ancien dossier deploye...
    rmdir /S /Q "%DEPLOY_DIR%"
)

REM --- Copier le nouveau WAR ---
echo Copie de %WAR_FILE% vers %TOMCAT_WEBAPPS%...
copy /Y "%WAR_FILE%" "%TOMCAT_WEBAPPS%"

IF %ERRORLEVEL% NEQ 0 (
    echo Erreur lors de la copie du WAR.
    pause
    exit /b %ERRORLEVEL%
)

echo Déploiement termine avec succes !
pause
