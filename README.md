# Download Harbor Certificate Script

### This script will download the `ca.crt` from the Cloud Native Container Registry Harbor, will create the necessary folder under `/etc/docker/cert.d/` to let you login into Harbor via your local docker client.

I developed the script for the following post: https://rguske.github.io/post/using-harbor-with-the-vcenter-event-broker-appliance/

> To solve this issue, I´ve created a little script which downloads the root certificate from Harbor, creates the relevant directories, puts the certificate into those and restarts the docker service.
