@echo off
TITLE Uncover Launcher
echo =====================================================
echo               Starting Uncover App...
echo =====================================================

:: ===========================
:: 1. SETUP BACKEND (FIRST RUN)
:: ===========================
echo Checking backend environment...
cd backend

if not exist venv (
    echo Creating Python virtual environment...
    py -m venv venv
)

call venv\Scripts\activate

if not exist "requirements_installed.txt" (
    echo Installing backend dependencies...
    pip install --upgrade pip
    pip install -r requirements.txt
    echo done > requirements_installed.txt
)

cd ..

:: ======================================
:: 2. START BACKEND IN SEPARATE WINDOW
:: ======================================
echo Starting Backend Server...
start "Uncover Backend" cmd /k "cd backend && call venv\Scripts\activate && uvicorn main:app --reload"

:: ===========================
:: 3. SETUP FRONTEND (FIRST RUN)
:: ===========================
echo Checking frontend environment...
cd frontend

if not exist node_modules (
    echo Installing frontend packages...
    npm install
)

:: ===========================
:: 4. START FRONTEND
:: ===========================
echo Starting Frontend Client...
npm start
