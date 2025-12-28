# Project Onboarding Script

This repository contains the onboardings scripts, designed to automate the initial environment setup and configuration.

## Prerequisites

* **Operating System**: Windows 10/11 or Windows Server.
* **Permissions**: You may need to run the terminal as an **Administrator**, depending on the tasks performed by the script (e.g., installing software or modifying system settings).

## How to Run

Windows restricts script execution by default for security reasons. To run this onboarding script, you must use the `Bypass` execution policy flag.

Open **PowerShell** or **Command Prompt** and execute the following command:

```powershell
powershell -ExecutionPolicy Bypass -File "C:\path\to\your\file\basic_onboarding.ps1"
