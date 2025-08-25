@echo off
echo Setting up SAP Example Provider...
echo ==================================

REM Check if Python 3 is available
python --version >nul 2>&1
if errorlevel 1 (
    echo Error: Python is not installed or not in PATH
    echo Please install Python 3.8 or higher and try again
    pause
    exit /b 1
)

REM Check Python version
for /f "tokens=2" %%i in ('python --version 2^>^&1') do set python_version=%%i
echo Found Python %python_version%

REM Create virtual environment
echo Creating virtual environment...
python -m venv venv

REM Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate.bat

REM Upgrade pip
echo Upgrading pip...
python -m pip install --upgrade pip

REM Install requirements
echo Installing SAP package from GitHub...
pip install -r requirements.txt

echo.
echo Setup complete! 🎉
echo.
echo To use the example provider:
echo 1. Activate the virtual environment: venv\Scripts\activate.bat
echo 2. Run the example: python example_provider.py
echo 3. Open http://localhost:8080 in your browser
echo.
echo To deactivate the virtual environment: deactivate
pause
