# JIT, JEA, and ZSA Access Policy Cheat Sheet

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-Cheat%20Sheet-purple)
![Audience](https://img.shields.io/badge/Audience-IT%20Support%20Technicians-lightgrey)
![Topic](https://img.shields.io/badge/Topic-Access%20Control-blue)

---

<table>
<tr>
<td width="300">
<img src="../../IMAGES/tech-log-solutions-logo.png" width="220" alt="TechLog Solutions Logo">
</td>
<td>
<em>Internal IT Support Security Cheat Sheet</em>
</td>
</tr>
</table>

**Document ID:** `SEC-1011`  
**Category:** Security / Access Control Awareness
**Target Audience:** IT Support / Service Desk  
**Last Updated:** June 2026

---

## Purpose

This cheat sheet explains three access-control concepts used in modern IT security: JIT, JEA, and ZSA.

The goal is to show basic least-privilege awareness and help first-level IT support understand when elevated access should be limited, approved, and documented.

---

## Key Terms

| Term | Full Name | Plain Meaning |
|---|---|---|
| JIT | Just-In-Time access | Temporary access granted only when needed |
| JEA | Just Enough Administration | Only the minimum admin rights needed for a task |
| ZSA | Zero Standing Access | No permanent privileged access by default |

---

## Quick Comparison

| Concept | Main Idea | Example |
|---|---|---|
| JIT | Access is time-limited | Admin access approved for 2 hours |
| JEA | Access is task-limited | Technician can reset passwords but cannot change server settings |
| ZSA | No permanent admin access | Users/admins request access only when needed |

---

## When to Use

| Situation | Best Concept |
|---|---|
| Temporary admin task | JIT |
| Limited admin role for a specific task | JEA |
| Reducing permanent privileged accounts | ZSA |
| Password reset delegation | JEA |
| Emergency access request | JIT with approval |
| Privileged access governance | ZSA |

---

## Simple Approval Flow

1. User or technician requests elevated access.
2. Request includes reason, system, task, and time needed.
3. Manager, system owner, or security team reviews the request.
4. Access is approved or denied.
5. Access is granted only for the approved task or time window.
6. Action is logged.
7. Access is removed automatically or manually after completion.

---

## First-Level Support Role

First-level IT support may:

- Create the access request ticket
- Collect the business reason
- Confirm the user identity
- Check whether access is temporary or permanent
- Route the request to the correct approver
- Document approval and completion
- Escalate privileged access requests

First-level support should not grant privileged access without approval.

---

## Ticket Note Example

**Issue:** User requested temporary elevated access for an approved administration task.  
**Action:** Confirmed user identity, documented business reason, affected system, requested access level, and required time window. Routed request for approval.  
**Result:** Access pending approval / approved for limited time.  
**Status:** Open / Completed.  
**Escalation:** Required for privileged access approval.

---

## Risks and Notes

- Permanent admin access increases security risk.
- Access should match the task, not the user’s convenience.
- Privileged access should be approved and logged.
- Temporary access should expire after the task is complete.
- Least privilege reduces damage from mistakes or compromised accounts.

---

## Summary

JIT, JEA, and ZSA are access-control concepts that support least privilege.

The key idea is simple: give the right access, only when needed, only for the required task, and only for the required time.
