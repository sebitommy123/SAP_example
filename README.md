# SAP Example Provider

This is an example project demonstrating how to use the SAP (SA Provider) library to create a data provider.

## Setup

1. **Create and activate virtual environment:**
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

2. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Run the example provider:**
   ```bash
   python example_provider.py
   ```

## What this example does

- Creates a simple data provider that serves employee data
- Demonstrates the `make_object`, `timestamp`, and `link` helpers
- Shows how to configure the SAP server with custom settings
- Runs on port 8080 with automatic data refresh every 60 seconds

## API Endpoints

Once running, you can access:
- `http://localhost:8080/hello` - Provider information
- `http://localhost:8080/all_data` - Cached data objects
- `http://localhost:8080/health` - Health status
- `http://localhost:8080/status` - Detailed status

## Customization

Edit `example_provider.py` to:
- Change the data source
- Modify the refresh interval
- Add more data fields
- Customize the provider name and description

## Project Structure

```
SAP_example/
├── venv/                 # Virtual environment (created by you)
├── requirements.txt      # Dependencies (installs SAP from GitHub)
├── README.md            # This file
└── example_provider.py  # Example provider implementation
```
