# Remote Support Tools Workflow – TeamViewer and AnyDesk

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Tool](https://img.shields.io/badge/Tool-TeamViewer-lightblue)
![Tool](https://img.shields.io/badge/Tool-AnyDesk-lightblue)

## Overview

This project documents the workflow of two remote support tools: TeamViewer and AnyDesk.

The focus is on remote session setup, user consent, supporter/user device roles, remote desktop access, and session closing.

The lab also helped clarify practical workflow differences between TeamViewer and AnyDesk.

## Objective

- connect a support technician device to a user device using remote support tools
- support users remotely with permission-based access
- collect relevant information before and during the session
- guide the user through basic support checks
- close the remote support session safely

## Lab Devices

| Role | Device | Operating System | Key Specs |
|---|---|---|---|
| Support technician device | HP Pavilion Laptop 15-eg0xxx | Windows 11 Pro | Intel Core i7-1165G7, 16 GB RAM |
| User device | HP Pavilion All-in-One 27-xa0xxx | Windows 10 Home 22H2 | Intel Core i5-9400T, 16 GB RAM |

## Tools Used

- TeamViewer
- AnyDesk

## Remote Support Security Rules

A serious remote support process should include:

- Use only approved remote support tools.
- Download tools only from official websites (if needed).
- Confirm user consent before starting the session.
- Allow the user to see what the supporter is doing.
- Do not ask the user to share passwords.
- Close the remote session after support is completed.

## Support Process

1. Receive the support request.
2. Ask clear questions to understand the problem.
3. Confirm the affected device, user, and application.
4. Ask for permission before starting remote access.
5. Start the remote support session.
6. Explain each action before making changes.
7. Check the browser and basic system status.
8. Review CPU, memory, disk, and network activity in Task Manager.
9. Test whether a browser-based website opens successfully.
10. Confirm the result with the user.
11. End the remote support session safely.
12. Document the steps taken.
13. Close or escalate the case.

## TeamViewer Workflow

1. Supporter creates a new remote support session.
2. Supporter receives a session code.
3. User enters the session code on the user device.
4. User waits for the supporter to start the session.
5. Supporter starts the session.
6. User sees that the session is active.
7. Supporter verifies remote desktop access.
8. Supporter performs a browser access check.
9. Supporter checks memory activity.
10. Supporter checks disk activity.
11. User has the option to close the session.
12. Supporter also has the option to end the session.
13. User confirms session closing.
14. Supporter returns to the managed device overview.

## AnyDesk Workflow

1. Supporter enters the user device AnyDesk address.
2. Supporter sends a connection request.
3. User accepts the session request.
4. Session starts.
5. Supporter verifies remote desktop access.
6. User or supporter closes the session.

For AnyDesk, the correct workflow in this lab was to enter the user device address on the support technician device. This made the laptop the supporter device and the All-in-One computer the user device receiving support.

## Remote Support Steps

1. Confirmed the issue with the user.
2. Asked for permission before starting remote access.
3. Started a remote support session from the support technician device.
4. User entered the session code and waited for the session to start.
5. Support technician started the session.
6. Confirmed that the remote desktop of the user device was visible.
7. Opened a browser-based test page.
8. Opened Task Manager on the user device.
9. Checked memory usage.
10. Checked disk activity.
11. Confirmed that the device responded normally.
12. Confirmed that the browser-based page opened successfully.
13. Demonstrated that both the user and the support technician can end the remote session.
14. Closed the session safely.
15. Documented the result.

## Screenshots

### TeamViewer Remote Support Session

| Step | Screenshot |
|---|---|
| Supporter starts a new remote support session | <img src="screenshots/teamviewer/01-teamviewer-supporter-new-session.png" width="500"> |
| Supporter generates the session code | <img src="screenshots/teamviewer/02-teamviewer-supporter-session-code.png" width="500"> |
| User enters the session code | <img src="screenshots/teamviewer/03-teamviewer-user-enters-session-code.png" width="400"> |
| User waits for the supporter to start the session | <img src="screenshots/teamviewer/04-teamviewer-user-waiting-for-session-start.png" width="400"> |
| Supporter starts the session | <img src="screenshots/teamviewer/05-teamviewer-supporter-starts-session.png" width="500"> |
| User sees the active session | <img src="screenshots/teamviewer/06-teamviewer-user-session-active.png" width="500"> |
| Supporter views the remote desktop | <img src="screenshots/teamviewer/07-teamviewer-supporter-remote-desktop-view.png" width="500"> |
| Browser access check | <img src="screenshots/teamviewer/08-teamviewer-supporter-browser-access-check.png" width="500"> |
| Task Manager memory check | <img src="screenshots/teamviewer/09-teamviewer-supporter-task-manager-memory-check.png" width="500"> |
| Task Manager disk check | <img src="screenshots/teamviewer/10-teamviewer-supporter-task-manager-disk-check.png" width="500"> |
| User has the option to close the session | <img src="screenshots/teamviewer/11-teamviewer-user-close-session-option.png" width="500"> |
| Supporter can also end the session | <img src="screenshots/teamviewer/12-teamviewer-supporter-ends-session.png" width="500"> |
| User confirms session closing | <img src="screenshots/teamviewer/13-teamviewer-user-close-session-confirmation.png" width="500"> |
| Supporter device overview after the session | <img src="screenshots/teamviewer/14-teamviewer-supporter-managed-device-overview.png" width="500"> |

### AnyDesk Remote Support Session

| Step | Screenshot |
|---|---|
| AnyDesk download page | <img src="screenshots/anydesk/01-anydesk-download-page.png" width="500"> |
| Supporter enters the user address | <img src="screenshots/anydesk/02-anydesk-supporter-enters-user-address.png" width="500"> |
| Supporter sends connection request | <img src="screenshots/anydesk/03-anydesk-supporter-connection-request.png" width="500"> |
| User accepts the session request | <img src="screenshots/anydesk/04-anydesk-user-accepts-session-request.png" width="500"> |
| AnyDesk session started | <img src="screenshots/anydesk/05-anydesk-session-started-user-side.png" width="500"> |
| Supporter views the remote desktop | <img src="screenshots/anydesk/06-anydesk-supporter-controls-user-device.png" width="500"> |
| User has the option to close the session | <img src="screenshots/anydesk/07-anydesk-user-disconnects-session.png" width="500"> |
| Supporter confirms session closing | <img src="screenshots/anydesk/08-anydesk-session-closed-supporter-side.png" width="500"> |

## Skills Demonstrated

- Remote support tool setup
- Remote support session handling
- Permission-based remote access
- User consent confirmation
- TeamViewer remote session workflow
- AnyDesk remote session workflow
- Supporter vs. user device role awareness
- Remote desktop access verification
- Safe session closing from the user side
- Safe session closing from the supporter side

## Notes

No real customer environment was used. 
