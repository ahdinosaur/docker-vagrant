# docker-vagrant

a virtual machine in your container, so you can virtualize while you containerize.

**doesn't work**

```shell
> docker run --rm -it -v /dev:/dev -v $HOME/.vagrant.d/:/root/.vagrant.d -v $(pwd):/data --workdir=/data ahdinosaur/vagrant "up"

Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'debian/jessie64'...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'debian/jessie64' is up to date...
==> default: Setting the name of the VM: data_default_1476747820459_93807
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 22 => 2222 (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
The guest machine entered an invalid state while waiting for it
to boot. Valid states are 'starting, running'. The machine is in the                                                                                                                            
'poweroff' state. Please verify everything is configured                                                                                                                                        
properly and try again.                                                                                                                                                                         

If the provider you're using has a GUI that comes with it,                                                                                                                                      
it is often helpful to open that and watch the machine, since the                                                                                                                               
GUI often has more helpful error messages than Vagrant can retrieve.                                                                                                                            
For example, if you're using VirtualBox, run `vagrant up` while the                                                                                                                             
VirtualBox GUI is open.
```

## how to

### install

install `docker`, then

```shell
git clone https://github.com/ahdinosaur/docker-vagrant
```

### build

```shell
docker build -t ahdinosaur/vagrant .
```

### run

```shell
docker run -i ahdinosaur/vagrant
```

### publish

```shell
docker push ahdinosaur/vagrant
```
