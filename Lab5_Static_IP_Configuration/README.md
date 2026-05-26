# Lab 5 – Static IP Configuration

Configured static IP addresses on Windows Server 2022 and Ubuntu Server.

## Static IP Settings Applied to Both VMs

| Setting | Value |
|---------|-------|
| IPv4 Address | 10.3.24.21 |
| Subnet Mask | 255.0.0.0 |
| DNS | 8.8.8.8 |

## Windows Server 2022 (DForcho-WinSRV22)

Set the static IP via PowerShell and verified with `ipconfig /all`. The output confirmed the new static address, subnet mask, default gateway, and DNS server were applied correctly. DHCP was disabled.

## Ubuntu Server (DForcho-UbuntuSRV)

Configured the static IP by editing the Netplan configuration file (`/etc/netplan/`), then applied the changes with `sudo netplan apply` and verified with `ip addr show`.

## Proof

See [`static_ip_proof.pdf`](./static_ip_proof.pdf)
