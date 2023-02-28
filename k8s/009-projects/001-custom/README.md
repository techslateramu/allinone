![TechSlate](../../../global/images/ts.png)

# Introduction
This is a mini project of K8S, which deploys few services listed below and connect them through ingress.

# Services
- tsapps
- calc
- horo
- color

# Ingress
- all-ingress

# Description
- Up on applying all the configurations, it will create an ingress and four services.
- The main service is tsapps, which will have re-direction other services

# Public-Images
- linuxramu/color:2.5
- linuxramu/horo:2.5
- linuxramu/calc:2.5
- linuxramu/tsapps:2.5