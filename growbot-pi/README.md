# README

Growbot is an automated indoor hydroponic growing platform. It consists of:
- growbot-api: A Ruby on Rails based reporting and monitoring API
- growbot-ui: A React based UI for interacting with the growbot-api reporting
- growbot-pi: A Python based suite of software intended to be run on a Raspberry Pi for managing the hydroponic grow and reporting to growbot-api (this project).

## growbot-pi

This project is growbot-pi. It is a Python based suite of programs used to read data from the environment and send it up to growbot-api. 

### Development

growbot-pi is dependent on the following:
- python 2.7.13

To run a development environment, install the above dependencies, then run:

```
virtualenv path/to/virtual/env (optional)
. path/to/virtual/env/bin/activate (optional)
pip install -r requirements.txt
```

You're now ready to develop. Unfortunately there's no bins right now to run, so nothing will work.
