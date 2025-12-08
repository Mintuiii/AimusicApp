@echo off
TITLE Uncover Launcher
echo =====================================================
echo               Starting Uncover App...
echo =====================================================

:: 1. Start the Backend in a new separate window
echo Starting Backend Server...
start "Uncover Backend" cmd /k "cd backend && if exist venv\Scripts\activate (call venv\Scripts\activate) && uvicorn main:app --reload"

:: 2. Start the Frontend in this window
echo Starting Frontend Client...
cd frontend
npm start