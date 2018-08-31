# README

Growbot is an automated indoor hydroponic growing platform. It consists of:
- growbot-api: A Ruby on Rails based reporting and monitoring API (this project)
- growbot-ui: A React based UI for interacting with the growbot-api reporting
- growbot-system: A (language yet to be determined) based suite of software intended to be run on a Raspberry Pi for managing the hydroponic grow and reporting to growbot-api.

## growbot-api

This project is growbot-api. It is a JSON only API used to broker communications between growbot-system and growbot-ui.

### Development

growbot-api is dependent on the following:
- ruby 2.4.1p111
- rails 5.2.1

To run a development environment, install the above dependencies, then run:

```
bundle install
rake db:setup
rails s
```

The growbot-api is now listening for data and for UI connections.
