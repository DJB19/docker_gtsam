# GTSAM Docker Environment

A reproducible Docker environment for GTSAM-based research.

## Features

* Ubuntu 24.04
* GTSAM 4.3a0
* Boost
* Eigen
* CMake
* GCC 13

## Build

```bash
docker build -t gtsam-env .
```

## Run

```bash
docker run -it gtsam-env
```

## Purpose

This project is intended to provide a reproducible research environment for:

* Factor Graph Optimization (FGO)
* Battery State of Charge (SOC) Estimation
* Battery State of Health (SOH) Estimation
* GTSAM-based optimization research
