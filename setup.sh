#!/bin/bash

echo "Setting up SAP Example Provider..."
echo "=================================="

# Check if Python 3 is available
if ! command -v python3 &> /dev/null; then
    echo "Error: Python 3 is not installed or not in PATH"
    echo "Please install Python 3.8 or higher and try again"
    exit 1
fi

# Check Python version
python_version=$(python3 -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")
echo "Found Python $python_version"

# Create virtual environment
echo "Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip

# Install requirements
echo "Installing SAP package from GitHub..."
pip install -r requirements.txt

echo ""
echo "Setup complete! 🎉"
echo ""
echo "To use the example provider:"
echo "1. Activate the virtual environment: source venv/bin/activate"
echo "2. Run the example: python example_provider.py"
echo "3. Open http://localhost:8080 in your browser"
echo ""
echo "To deactivate the virtual environment: deactivate"
