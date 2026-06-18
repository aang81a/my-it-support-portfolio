# Ticket 02 - Network Internet Access Issue

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-Ticket%20Case-blue)
![Tool](https://img.shields.io/badge/Tool-Spiceworks-orange)

---

<table>
<tr>
<td width="300">
<img src="../../../../IMAGES/01/tech-log-solutions-logo.png" width="220" alt="TechLog Solutions Logo">
</td>
<td>
<em>Help Desk Ticket Case</em>
</td>
</tr>
</table>

**Ticket title:** Network Internet Access Issue  
**Ticket Category:** Network  
**Audience:** IT Support / Service Desk   
**Priority:** High  
**Final Status:** Closed  
**Assignee:** Conrad Tadmini  
**Requester:** Mark Callingback  

---

## 1. Problem

**User report:**  
User reports that the computer is connected to Wi-Fi, but websites do not load in the browser.

---

## 2. Analysis

**Initial assessment:**  
The device showed an active Wi-Fi connection, so the issue was not treated as a simple disconnected-network problem.

The support check focused on separating Wi-Fi connectivity from a possible DNS-related browsing issue.

**Scope check:**

The case was checked using the "4W" scope formula:

- **Who is affected?** One user / one device
- **What is affected?** Internet access / browser-based websites
- **When did it start?** Reported during the support request
- **What impact does it have?** High — internet access unavailable for one user/device; no wider outage identified.

**Possible causes:**

- Wi-Fi connectivity issue
- DNS-related browsing issue
- Device-specific network configuration issue

**Root cause:**  
DNS lookup failed on the affected device. Wi-Fi was connected, but websites could not be reached by domain name.

---

## 3. Troubleshooting Steps

The following steps were documented in the ticket notes:

- Confirmed whether the issue affected only one user or multiple users.
- Checked Wi-Fi connection status.
- Asked the user to test another website.
- Checked IP configuration.
- Tested network connectivity with ping.
- Checked DNS resolution.
- Reconnected the device to Wi-Fi.
- Confirmed with the user that internet access was restored.

**Internal support note style used:**  
Short internal activity log using neutral, past-tense support documentation.

---

## 4. Resolution / Escalation

**Resolution:**  
The issue was resolved after reconnecting to Wi-Fi and confirming that DNS resolution and website access worked again.

**Escalation:**  
No escalation was required.

---

## 5. Result

**User confirmation:**  
User confirmed that websites loaded again.

**Final status:**  
Closed

---

## 6. Screenshots

### Ticket Created

Initial network ticket showing the user report, priority, network category, and open status.

![Ticket Created](../screenshots/05-ticket-created-network.png)

---

### Ticket Resolved

Resolved network ticket showing troubleshooting notes, DNS/connectivity checks, resolution note, and closed status.

![Ticket Resolved](../screenshots/06-ticket-resolution-network.png)

---

## Skills Demonstrated

- Checking the scope of a network access issue
- Separating Wi-Fi connectivity from DNS/browser access problems
- Documenting internal troubleshooting steps
- Documenting root cause and resolution
- Updating ticket status after user confirmation
