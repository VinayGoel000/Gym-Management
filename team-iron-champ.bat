@echo off
title Team Iron Champs System

echo Starting Backend...
cd /d "D:\programs\gym project\gym"
start cmd /k mvn spring-boot:run

timeout /t 8 >nul

echo Starting Frontend...
cd /d "D:\programs\gym project\gym-frontend"
start cmd /k npx live-server --port=5500

timeout /t 3 >nul

echo Opening Website...
start http://localhost:5500

echo System Started Successfully
pause