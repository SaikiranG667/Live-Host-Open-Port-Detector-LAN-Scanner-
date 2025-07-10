# 🔍 Nmap LAN Scanner

A simple Bash-based Nmap tool to discover live hosts and open ports on your local network. Great for beginners learning cybersecurity and network scanning.

---

## 🚀 Features

- Scans entire LAN subnet for active devices
- Performs port scan on top 1000 ports
- Detects services running on open ports
- Exports results to `results.csv` (CSV format)
- Works directly on Kali Linux terminal (no Python required)

---

## 🖼️ Demo

```bash
$ ./lan_scanner.sh
Scanning 10.85.98.134
10.85.98.134,53,open,domain
Scanning 10.85.98.163
10.85.98.163,135,open,msrpc
