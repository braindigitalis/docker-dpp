# docker-dpp
D++ docker development environment

The `data` directory is the home directory of the `build` user within the container.

To make use of the container in vscode, use remote dev via ssh, on the containers bound ip address, port 220. You should add your ssh key to `./data/.ssh/authorized_keys`, as the build user has no password set so will not allow password authentication.
