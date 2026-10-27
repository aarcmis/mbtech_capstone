# M&B Tech Capstone Project
Jacob and Aaron

## Setting Up The Project

### Initial Setup
#### macOS:
For setting up for the first time on macOS:

1. Install Python:
```bash
curl -O https://www.python.org/ftp/python/3.14.0/python-3.14.0-macos11.pkg
sudo installer -pkg python-3.14.0-macos11.pkg -target /
```

2. Run the setup script:
```bash
./scripts/mac/mac_setup.sh
```

> [!NOTE]
> If you get "permission denied," run this once from the project root, then try again:
> ```bash
> chmod +x scripts/mac/*.sh
> ```
#### Windows:
For setting up for the first time on Windows:

1. Install Python:
```bat
curl -O https://www.python.org/ftp/python/3.14.0/python-3.14.0-amd64.exe
python-3.14.0-amd64.exe /quiet PrependPath=1
```

2. Close and reopen Command Prompt so it can find Python, then run the setup script:
```bat
scripts\windows\windows_setup.bat
```

### Launching The Project
### Launching

#### macOS
Start the server:
```bash
./scripts/mac/mac_launch.sh
```
Then open http://127.0.0.1:8000/ in your browser. Press `Ctrl+C` in Terminal to stop the server.

#### Windows
Start the server:
```bat
scripts\windows\windows_launch.bat
```
Then open http://127.0.0.1:8000/ in your browser. Press `Ctrl+C` in Command Prompt to stop the server.
