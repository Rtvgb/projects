# Lab 7 – Spiceworks Cloud Help Desk

## Objective
Set up a Spiceworks Cloud Help Desk account, configure the IT team and user portal, and demonstrate the full ticket lifecycle from creation to assignment and comment.

## Account Setup

- **Company Name:** Forcho, Inc.
- **Domain:** TUForcho
- **Portal URL:** https://tuforcho.on.spiceworks.com/portal

---

## Employee Administration

Added three technicians to the IT team under Settings → Employee Administration. Each was assigned the Tech role and given an email under the TUForcho domain.

| Name | Role | Email |
|------|------|-------|
| Wayne Little | Tech | wayne.little@tuforcho.com |
| Rocky Balboa | Tech | rocky.balboa@tuforcho.com |
| Naruto Uzumaki | Tech | naruto.uzumaki@tuforcho.com |

The account owner (Daphny Forcho) was automatically listed as Owner.

**Proof:** [`employee_administration.png`](./employee_administration.png)

---

## User Portal Customization

Configured the user-facing help desk portal under Settings → Organizations → Forcho → User Portal.

**Changes made:**
- **Page Title:** Forcho Help Desk
- **Form Title:** Forcho IT Support Request Portal
- **Login Welcome Message:** Welcome to the Forcho, Inc. IT Help Desk.
- **Form Message:** Simply create a ticket below. A technician will respond promptly to your issue.
- **Categories:** Enabled and set to required — users must select a category before submitting
- **Portal Image:** Custom image uploaded (Monkey D. Luffy)
- **Portal Theme:** Blue

**Proof:** [`user_portal_settings.png`](./user_portal_settings.png)

---

## Ticket Lifecycle

Used the portal to submit a ticket and demonstrated assignment and commenting.

**Ticket #4 – Cannot connect to Wi-Fi**
- **Description:** Laptop disconnects from campus Wi-Fi every few minutes.
- **Created by:** Daphny Forcho
- **Assigned to:** Naruto Uzumaki
- **Category:** Network
- **Priority:** Medium
- **Status:** Open

A comment was added to the ticket: *"Troubleshooting started. Checking wireless adapter settings and campus network authentication."*

The ticket queue also showed two auto-generated welcome tickets (#1 and #2) from Spiceworks, confirming the help desk was fully operational.

**Proof:** [`open_ticket.png`](./open_ticket.png)
