# Lab 3 – Splunk Enterprise Deep Dive

## Objective
Install Splunk Enterprise on the Windows 11 VM and complete Parts 1–4 of the Splunk Enterprise Search Tutorial.

## Environment
- **VM:** DForcho-Win11 (VMware Workstation)
- **Splunk Version:** Enterprise 10.2
- **Interface:** localhost:8000

## What I Did

### Part 1 – Installation & Login
- Downloaded and installed Splunk Enterprise on DForcho-Win11
- Accessed the Splunk web interface at `localhost:8000`
- Logged in as Administrator confirming successful installation

### Part 2 – Uploading Tutorial Data
- Downloaded the Splunk tutorial dataset (`tutorialdata.zip`)
- Uploaded the data using the Add Data workflow
- Confirmed successful ingestion — search returned **109,864 events** from `tutorialdata.zip`

### Part 3 – Specifying Time Ranges
- Used the Custom Time Range picker to set a specific date and time window
- Ran a filtered search against the tutorial data within the custom time range
- Verified filtered event results (failed SSH login attempts visible in event list)

### Part 4 – Using a Subsearch
- Built a subsearch query:
  ```
  sourcetype=access_* status=200 action=purchase
  [ search sourcetype=access_* status=200 action=purchase
  | top limit=1 clientip
  | table clientip ]
  | stats count, distinct_count(productId), values(productId) by clientip
  ```
- Search returned **134 events** with distinct product counts per client IP

## Proof of Completion
See [`Lab3_Splunk_proof.pdf`](./Lab3_Splunk_proof.pdf) — contains all required screenshots with VMware window frame visible showing DForcho-Win11.
