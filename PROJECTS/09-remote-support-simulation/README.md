# Remote Support Simulation

![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![Tool](https://img.shields.io/badge/Tool-TeamViewer-lightgrey)


![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)

![Status](https://img.shields.io/badge/Focus-IT%20Support-blue)

![Status](https://img.shields.io/badge/OS-Windows%2010%20%7C%2011-blue)

![Status](https://img.shields.io/badge/Tool-TeamViewer-lightgrey)


## Overview

This project documents a simulated remote support scenario for practicing first-level IT support tasks.

The focus of this project is remote support preparation, user consent, guided troubleshooting, professional communication, ticket documentation, and escalation awareness.

## Objective

Practice how to support users remotely, collect relevant information, document the case, and guide the user through basic technical troubleshooting steps.

## Lab Devices

| Role | Device | Operating System | Key Specs |
|---|---|---|---|
| Support technician device | HP Pavilion Laptop 15-eg0xxx | Windows 11 Pro | Intel Core i7-1165G7, 16 GB RAM |
| User device | HP Pavilion All-in-One 27-xa0xxx | Windows 10 Home 22H2 | Intel Core i5-9400T, 16 GB RAM |

## Tools Used

- TeamViewer
- Task Manager
- Ticketing documentation
- Knowledge base notes

## Course Tool Awareness

The course also introduced several remote support and remote access tools:

- Microsoft Remote Desktop
- Windows Remote Assistance
- Cisco WebEx
- Remote Desktop for macOS
- Virtual Network Computing (VNC)
- pcAnywhere as a legacy remote access tool

## Practice Scenarios

- User cannot access an application
- User has network connection problems
- User needs help with Microsoft 365 / Outlook
- User needs basic Windows support
- User needs guidance by phone or remote session

## Support Process

1. Receive the support request.
2. Ask clear questions to understand the problem.
3. Confirm the affected device, user, and application.
4. Ask for permission before starting remote access.
5. Start the remote support session.
6. Explain each action before making changes.
7. Guide the user through basic troubleshooting steps.
8. Document the steps taken.
9. Confirm the result with the user.
10. Close or escalate the case.

## Troubleshooting Process Applied

| Course Step | Applied in This Simulation |
|---|---|
| Define the problem | User reports that a browser-based application cannot be accessed. |
| Gather detailed information | Ask when the issue started, what error appears, and whether other websites work. |
| Identify a probable cause | Possible browser issue, stuck process, cache issue, or network connectivity problem. |
| Devise a plan | Check browser status, restart the browser, test connectivity, and retry the web application. |
| Make necessary changes | Close/restart the browser and clear basic browser state if needed. |
| Observe the results | Test whether the web application opens again. |
| Repeat the process | If the issue remains, continue checking connectivity or escalate. |
| Document the changes | Record the troubleshooting steps and resolution in the ticket note. |

## Example Scenario: Browser-Based Application Access Issue - MINDENT EZALATT ELLENÖRIZNI

### Situation

A user reports that they cannot access a browser-based work application during working hours.

### Questions Asked

- What exactly happens when you try to access the browser-based application?
- Do you receive an error message?
- When did the issue start?
- Did anything change recently, such as an update, restart, browser change, or new software installation?
- Are other websites or web applications working normally?
- Is the issue happening in one browser only or in multiple browsers?
- May I start a remote support session to check the issue with you?

### Remote Support Steps

1. Confirm the issue with the user.
2. Ask for permission before starting remote access.
3. Explain each action before making changes.
4. Check whether the browser is already running in Task Manager.
5. Close the stuck browser process if needed.
6. Restart the browser.
7. Test basic network connectivity.
8. Try opening the browser-based application again.
9. Test another website to compare whether the issue affects only one application or general web access.
10. Confirm the result together with the user.

### Possible Root Cause

The browser process may have been stuck in the background, the browser session may have needed a restart, or the issue may have been related to basic connectivity or browser state.

### Resolution

The browser was closed fully through Task Manager and restarted. After checking basic system status and connectivity, the browser-based application opened successfully again.

### Verification

The user confirmed that the browser-based application opened successfully and they could continue working.

## Ticket Documentation Example

```text
Issue:
User reported that a browser-based work application could not be accessed.

Affected device:
Computer 3

Troubleshooting steps:
- Confirmed the issue with the user.
- Asked for permission to start a remote support session.
- Connected through TeamViewer.
- Checked whether the browser was already running in Task Manager.
- Closed the stuck browser process if needed.
- Restarted the browser.
- Tested basic network connectivity.
- Tried opening the browser-based application again.
- Tested another website to compare whether the issue affected only one application or general web access.
- Verified that the browser-based application opened successfully.

Resolution:
Browser was restarted successfully after closing the stuck background process. Basic connectivity was checked, and the browser-based application opened successfully again.

Status:
Resolved

Escalation:
Not required.
```

## Screenshots

Screenshots will be added.

### Planned screenshots

- TeamViewer connection preparation
- User consent / session start
- Remote desktop view of Computer 3
- Task Manager check on the user device
- Browser-based application test
- Final documentation or ticket note

### TeamViewer connection preparation

<img src="screenshots/01-teamviewer-connection-preparation.png" width="500">

### User consent / session start

<img src="screenshots/02-user-consent-session-start.png" width="500">

### Remote desktop view of Computer 3

<img src="screenshots/03-remote-desktop-view.png" width="500">

### Task Manager check on the user device

<img src="screenshots/04-task-manager-check.png" width="500">

### Browser-based application test

<img src="screenshots/05-browser-based-application-test.png" width="500">

### Ticket note example

<img src="screenshots/06-ticket-note-example.png" width="500">

## Skills Demonstrated

- Remote support
- User communication
- Permission-based remote access
- Initial problem analysis
- Structured troubleshooting process
- Windows basic troubleshooting
- Task Manager usage
- Browser-based application troubleshooting
- Basic connectivity checking
- Ticket documentation
- Customer service
- Escalation awareness

## Notes

This project is a simulation created for portfolio purposes. It demonstrates the support process, communication style, documentation logic, and basic remote troubleshooting steps used in first-level IT support.
