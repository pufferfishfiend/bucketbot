# README

Growbot is an automated indoor hydroponic growing platform. It consists of:
- growbot-api: A Ruby on Rails based reporting and monitoring API
- growbot-ui: A React based UI for interacting with the growbot-api reporting (this project)
- growbot-system: A (language yet to be determined) based suite of software intended to be run on a Raspberry Pi for managing the hydroponic grow and reporting to growbot-api.

## growbot-ui

This project is growbot-ui. It is a NodeJS/React client used to consume data from and communicate settings changes to the growbot-system running on the Raspberry Pi. 

### Development

growbot-ui is dependent on the following:
- node 6.9.1
- react 16.4.2

To run a development environment, install the above dependencies, then run:

```
yarn install
yarn start
```

growbot-ui will now attempt to talk to the growbot-api and allow you to view data and manage the settings of your grow.
