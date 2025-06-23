# Websockets stuff

This is a websockets project written in Terraform and Python.
Your websocket client can connect, subscribe to a topic and receive messages sent to that topic.

## Prerequisites
* Terraform is installed
* You have logged onto AWS using the `aws sso login`

## Installation

1. Clone the repository
2. Navigate to the root of this repository
3. Run `./package_redis.sh` to package the Redis module for our lambda functions 
4. Navigate to the `/terraform` directory
5. Run `terraform init`
6. Run `terraform workspace select <env>` where env is one of `testing`, `staging`, or `production`. 
7. Run `terraform apply --var-file=<env>.tfvars`

## Usage

To connect use the command `wscat -c wss://<YOUR_API_GW_INVOKE_URL>`

e.g. `wscat -c wss://abc123.execute-api.eu-west-1.amazonaws.com/dev`

Once connected, press enter and the default response will give instructions on usage.

TODO
- [x] Authorization: query string
- [x] Authorization: x-api-key header
- [x] Storage: change dynamoDB to cache e.g. elastic cache
- [x] PING/PONG request/response to prevent client connection timeout
- [x] Redis connection pooling
