# Mock Exporter with Prometheus

## Requirements

* Docker & Docker Compose installed
* Python for consuming metrics

## Setup

Clone the repo

```sh
git clone https://github.com/your-repo/mock-exporter.git
cd mock-exporter
```

Start the services

```sh
docker-compose up --build or docker compose up --build (depending on the version of docker compose installed)
```

This will start prometheus on localhost:9090 and mock-exporter on localhost:9000/metrics

You can verify it by opening those in the browser.

The /metrics should give you something like

```sh
# HELP cpu_usage CPU usage
# TYPE cpu_usage gauge
cpu_usage 75.53448594531714
# HELP memory_usage Memory usage
# TYPE memory_usage gauge
memory_usage 9812.543875301406
# HELP disk_usage Disk space used (GB)
# TYPE disk_usage gauge
disk_usage 59.45634103383827
# HELP disk_read_bytes Disk read bytes
# TYPE disk_read_bytes gauge
disk_read_bytes 2.606923959766769e+08
# HELP disk_write_bytes Disk write bytes
# TYPE disk_write_bytes gauge
disk_write_bytes 4.7887506781350774e+08
# HELP network_rx_bytes Network received bytes
# TYPE network_rx_bytes gauge
network_rx_bytes 5.705149767980435e+08
# HELP network_tx_bytes Network transmitted bytes
# TYPE network_tx_bytes gauge
network_tx_bytes 7.194857987918919e+06
```

Stopping the container

```sh
docker-compose down
```
