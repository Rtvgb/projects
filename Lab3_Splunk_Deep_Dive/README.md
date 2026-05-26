# Lab 3 – Splunk Enterprise Deep Dive

## Objective
Install Splunk Enterprise on the Windows 11 VM and work through Parts 1–4 of the official Splunk Enterprise Search Tutorial. Each part builds on the last — from basic setup to writing subsearch queries.

## Environment
- **VM:** DForcho-Win11
- **Splunk Version:** Enterprise 10.2
- **Web Interface:** localhost:8000

---

## Part 1 – Installation & Login

Downloaded the Splunk Enterprise installer and ran it on DForcho-Win11. After installation Splunk starts as a background service and is accessed through a browser at `localhost:8000`. Logged in as Administrator to confirm the installation was successful and the dashboard loaded correctly.

---

## Part 2 – Uploading Tutorial Data

Downloaded the Splunk tutorial dataset (`tutorialdata.zip`) from the Splunk documentation. Uploaded it using the **Add Data** workflow inside Splunk. After the upload completed, ran a source search to verify the data was indexed correctly — the search returned **109,864 events** from `source="tutorialdata.zip"`, confirming a successful upload.

---

## Part 3 – Specifying Time Ranges

Used the **Custom Time Range** picker in the Search & Reporting app to filter events by a specific date and time window. Ran a search against the tutorial data within that range and reviewed the filtered results. The event list showed failed SSH login attempts with source IPs and timestamps, which confirmed the time filter was working correctly.

---

## Part 4 – Using a Subsearch

Built a multi-part search query using a subsearch to find the top purchasing client and then pull all their transactions:

```spl
sourcetype=access_* status=200 action=purchase
[ search sourcetype=access_* status=200 action=purchase
| top limit=1 clientip
| table clientip ]
| stats count, distinct_count(productId), values(productId) by clientip
```

The search returned **134 events** and displayed a table of client IPs with their purchase counts and the distinct products they bought. This confirmed the subsearch was filtering and aggregating correctly.

---

## Proof of Completion

[`Lab3_Splunk_proof.pdf`](./Lab3_Splunk_proof.pdf) — contains all required screenshots with the VMware Workstation window frame visible, showing DForcho-Win11 as the active VM.
