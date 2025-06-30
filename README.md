# NET Sathi Connect VPN

## Overview

NET Sathi Connect VPN is a user-friendly VPN client application for Windows, designed to provide a seamless and secure connection experience. Built with Python and the `customtkinter` library, it features a modern graphical user interface (GUI) that simplifies VPN connections. The application supports multiple VPN protocols and includes features like credential saving and real-time status updates.

## Features

*   **Modern User Interface**: Clean, intuitive, and visually appealing interface built with `customtkinter`.
*   **Multiple VPN Protocols**: Supports:
    *   PPTP (Point-to-Point Tunneling Protocol)
    *   L2TP/IPSec with Pre-Shared Key (PSK)
    *   L2TP/IPSec with Certificate Authentication
*   **Credential Management**: Option to save VPN server details, username, password, protocol, and PSK locally for quick reconnections.
*   **Real-time Status Updates**: Displays current connection status (e.g., "Connecting...", "Connected", "Disconnected", "Error messages") directly in the UI.
*   **Progress Indicator**: A visual progress bar indicates activity during connection and disconnection processes.
*   **Dynamic UI**: The Pre-Shared Key input field is dynamically shown or hidden based on the selected VPN protocol.
*   **Informative Dialogs**: Provides clear feedback through pop-up messages for connection success, failures, and specific errors (e.g., authentication failure, certificate issues).
*   **Protocol Guidance**: An info button (ℹ️) offers a brief explanation of the available VPN protocols to help users choose.
*   **Portable Executable**: Can be built into a single `.exe` file for easy distribution and use without installing Python.
*   **Installer Script**: Includes an `install.bat` script for easy deployment on Windows systems, creating a dedicated folder and desktop shortcut.
*   **Customizable Logo and Icon**: Uses `nsSquare.png` for the in-app logo and `nsSquare.ico` for the window and executable icon.

## Requirements (for running from source code)

*   Python 3.7 or newer
*   `customtkinter` library
*   `Pillow` (PIL) library

## Running the Application

### From Source Code

1.  **Ensure Python is installed**: Download and install Python (3.7+) from [python.org](https://www.python.org/) if you haven't already. Make sure to check the option "Add Python to PATH" during installation.
2.  **Download Project Files**: Obtain the project files, including `netsathi_vpn.py`, `nsSquare.png` (logo), and `nsSquare.ico` (icon).
3.  **Install Required Libraries**: Open a terminal or command prompt and run the following command:
    ```bash
    pip install customtkinter Pillow
    ```
4.  **Run the Application**: Navigate to the directory containing `netsathi_vpn.py` in your terminal/command prompt and execute:
    ```bash
    python netsathi_vpn.py
    ```

### Using the Executable (`NetSathi Connect VPN.exe`)

1.  If you have the `NetSathi Connect VPN.exe` file (typically found in the `dist` folder after building, or in the installation directory created by `install.bat`), you can run the application by double-clicking this file.
2.  For the logo to display correctly, `nsSquare.png` should ideally be in the same directory as the executable, or it should have been bundled correctly during the build process (which the provided PyInstaller command does). The `install.bat` script also copies this file to the installation directory.

## How to Use the Application

1.  **Launch NET Sathi Connect VPN**: Double-click the executable or run it from the source as described above.
2.  **Server Address**: In the "Server Address" field, type the hostname or IP address of your VPN server (e.g., `vpn.yourcompany.com`).
3.  **Username**: Enter your VPN account username in the "Username" field.
4.  **Password**: Enter your VPN account password in the "Password" field.
5.  **VPN Protocol**: Select the VPN protocol your server uses:
    *   **PPTP (Simple)**: Generally the easiest to set up and broadly compatible, but considered less secure than L2TP/IPSec.
    *   **L2TP/IPSec (PSK)**: A more secure option that requires a "Pre-Shared Key" (a shared secret password) in addition to your username and password.
    *   **L2TP/IPSec (Certificate)**: Offers strong security by using digital certificates for authentication. This usually requires a client certificate to be installed on your computer by your VPN administrator.
    *   Click the "ℹ️" button next to "VPN Protocol" for a brief in-app guide.
6.  **Pre-Shared Key (PSK)**: If you select "L2TP/IPSec (PSK)", an input field for the "Pre-Shared Key" will appear. Enter the PSK provided by your VPN administrator.
7.  **Remember credentials**: Check this box if you want the application to save the entered server address, username, password, selected protocol, and PSK (if applicable) for future sessions. These details are stored in a `credentials.json` file in the application's directory.
8.  **Connect**: Click the **"🔐 Connect"** button.
9.  **Monitor Status**: The application will display status messages (e.g., "Removing existing connections...", "Creating VPN connection...", "Establishing connection...") and an animated progress bar.
10. **Connection Result**:
    *   **Success**: A pop-up message will confirm "Connected Successfully!". The status label in the app will update, and the connect button will change to **"🔒 Disconnect"**.
    *   **Failure**: An error message will pop up detailing the issue (e.g., authentication failed, server unreachable, certificate error). The status label will also reflect the error.
11. **Disconnect**: To end the VPN session, click the **"🔒 Disconnect"** button. A confirmation message will appear once disconnected.

## Building the Executable (`NetSathi Connect VPN.exe`)

To package the Python application into a standalone Windows executable (`.exe`), you can use PyInstaller.

1.  **Install PyInstaller**: If you don't have it installed, open your terminal/command prompt and run:
    ```bash
    pip install pyinstaller
    ```
2.  **Prepare Files**: Ensure `netsathi_vpn.py`, the logo image `nsSquare.png`, and the icon file `nsSquare.ico` are all in the same directory.
3.  **Run PyInstaller Command**: Open your terminal/command prompt, navigate to this directory, and execute the following command:
    ```bash
    python -m PyInstaller --onefile --windowed --icon=nsSquare.ico --add-data "nsSquare.png:." --add-data "nsSquare.ico:." --hidden-import PIL._tkinter_finder --hidden-import customtkinter netsathi_vpn.py
    ```
    *   `--onefile`: Bundles everything into a single executable file.
    *   `--windowed`: Prevents a console window from appearing when the GUI application is run.
    *   `--icon=nsSquare.ico`: Sets the icon for the executable and its window.
    *   `--add-data "nsSquare.png:."`: Includes `nsSquare.png` in the build. The `:.` part ensures it's placed in the root of the temporary directory when the app runs.
    *   `--add-data "nsSquare.ico:."`: Similarly includes the icon file as a data file (useful if referenced dynamically beyond just the `--icon` flag).
    *   `--hidden-import PIL._tkinter_finder`: Ensures PyInstaller includes necessary modules for Pillow's Tkinter compatibility.
    *   `--hidden-import customtkinter`: Ensures PyInstaller includes all necessary `customtkinter` modules.
4.  **Find Executable**: After PyInstaller finishes, a `dist` folder will be created in your project directory. Inside `dist`, you will find `NetSathi Connect VPN.exe`.

## Installation (Using `install.bat`)

The project includes an `install.bat` script to simplify setting up the application on a Windows computer. This script is typically found in the `dist` folder alongside the generated `.exe` file.

**To use the installer:**

1.  Ensure `NetSathi Connect VPN.exe`, `nsSquare.png`, `nsSquare.ico`, and `install.bat` are in the same folder (e.g., the `dist` folder).
2.  **Run as Administrator**: Right-click on `install.bat` and select "Run as administrator". This is necessary because the script creates a directory in `C:\` and a desktop shortcut.
3.  **Follow Prompts**: The script will perform the following actions:
    *   Create an installation directory: `C:\NetSathi Connect VPN`.
    *   Copy `NetSathi Connect VPN.exe`, `nsSquare.png`, and `nsSquare.ico` to this new directory.
    *   Create a shortcut named "NetSathi Connect VPN" on your desktop. This shortcut will point to the installed executable and use `nsSquare.ico` as its icon.

After the script finishes, you can launch the application using the desktop shortcut.

## Developer

*   **Software by**: Anuraj Maddhesiya & Shubham Sharma
*   **Contact/Portfolio (Anuraj Maddhesiya)**: [Your GitHub Profile/LinkedIn/Portfolio Link Here - Placeholder]

---
*This README provides a guide to using and understanding the NET Sathi Connect VPN application.*
*© 2024. All rights reserved.* 