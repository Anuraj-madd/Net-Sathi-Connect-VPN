NET Sathi Connect VPN - Quick Installation and Connection Guide
---
Thank you for choosing NET Sathi Connect VPN! Follow these steps to install and use the application.

Step 0: Downloading the Software
   *    On the Github Repo click on the Code button.
   *    Click on Download as Zip option to download the whole package as a single zip file.

Part 1: Installing the Application

1.  Extract All Files:
    *   If you received the application files in a ZIP archive (e.g., `NetSathi_VPN_Package.zip`), you first need to extract its contents.
    *   Right-click on the ZIP file and select "Extract All..." or "Extract Here" (depending on your extraction software like WinRAR or 7-Zip).
    *   Choose a folder on your computer where you want to save the extracted files. You should see a folder (likely named `dist` or similar) containing `NetSathi Connect VPN.exe`, `nsSquare.png`, `nsSquare.ico`, and `install.bat`.

2.  Run the Installation Script (`install.bat`):
    *   Navigate to the folder where you extracted the files.
    *   Locate the `install.bat` file.
    *   IMPORTANT: You need to run this script as an administrator for it to create the installation directory and desktop shortcut correctly.
    *   Right-click on `install.bat` and select "Run as administrator" from the context menu.
    *   If prompted by User Account Control (UAC), click "Yes" to allow the script to make changes.
    *   The script will automatically:
        *   Create an installation folder at `C:\NetSathi Connect VPN`.
        *   Copy the application executable (`NetSathi Connect VPN.exe`), logo (`nsSquare.png`), and icon (`nsSquare.ico`) to this folder.
        *   Create a desktop shortcut named "NetSathi Connect VPN".

3.  Installation Complete:
    *   Once the script finishes (the command window will usually close automatically), the application is installed.

Part 2: Connecting to Your VPN

1.  Launch NET Sathi Connect VPN:
    *   Go to your desktop.
    *   Find the "NetSathi Connect VPN" icon (it should have the nsSquare logo).
    *   Double-click the icon to open the application.

2.  Enter Server Address:
    *   In the application window, find the field labeled "Server Address".
    *   Type the address of your VPN server (e.g., `server.yourvpnprovider.com` or an IP address like `123.45.67.89`). This information is provided by your VPN service.

3.  Enter Username:
    *   Find the field labeled "Username".
    *   Type your VPN account username.

4.  Enter Password:
    *   Find the field labeled "Password".
    *   Type your VPN account password. (Characters will be hidden as you type).

5.  Select VPN Protocol:
    *   Locate the "VPN Protocol" section with radio buttons.
    *   Choose the protocol that matches your VPN server's configuration:
        *   PPTP (Simple): Often the easiest but less secure.
        *   L2TP/IPSec (PSK): More secure. If you choose this, an additional field for "Pre-Shared Key" will appear below.
        *   L2TP/IPSec (Certificate): Very secure, usually for corporate VPNs that require a certificate installed on your computer.
    *   If you are unsure, check with your VPN provider or IT administrator. You can also click the "ℹ️" (info) button in the app for a brief description of each.

6.  Enter Pre-Shared Key (if L2TP/IPSec (PSK) is selected):
    *   If you selected "L2TP/IPSec (PSK)" in the previous step, a field labeled "Pre-Shared Key" will become visible.
    *   Enter the Pre-Shared Key (sometimes called a "shared secret") provided by your VPN service.

7.  Optional: Remember Credentials:
    *   If you want the application to save your Server Address, Username, Password, Protocol, and PSK (if used) for next time, check the "Remember credentials" box.
    *   Note: This stores credentials in a local file (`credentials.json`) in the application's directory.

8.  Connect to the VPN:
    *   Once all details are entered, click the large button at the bottom labeled "🔐 Connect".
    *   The application will show status updates like "Connecting..." and a progress bar will animate.

9.  Connection Status:
    *   Success: If the connection is successful, a pop-up message will confirm, the status in the app will change to "Connected", and the button will change to "🔒 Disconnect". You are now connected to the VPN!
    *   Failure: If the connection fails, an error message will pop up explaining the possible reason (e.g., "Authentication Failed," "Server Unreachable"). Double-check your details and try again. If issues persist, contact your VPN provider.

10. Disconnecting from the VPN:
    *   When you want to disconnect, simply click the "🔒 Disconnect" button in the application.
    *   A confirmation message will appear when you are disconnected.

If you encounter any issues, please re-check your credentials and server details.

---
Developer Message: 
    *   Software By : Anuraj Maddhesiya (https://cybernetic.co.in).
    *   For support or inquiries, please refer to the contact information provided by the software distributor.
