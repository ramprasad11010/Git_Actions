module "linux-WebServer" {
    source = "./WebServer"
    public_ip = true
    security_group = [ "sg-08dd381ccb3f46b48" ]
    subnet_id = "subnet-0f11724321edf5faf"
    tags = {
        Name = "Webserver1"
        env = "dev"
    }
    file = "userdata1.sh"
}


module "linux-WebServer2" {
    source = "./WebServer"
    public_ip = true
    security_group = [ "sg-08dd381ccb3f46b48" ]
    subnet_id = "subnet-0f11724321edf5faf"
    tags = {
        Name = "Webserver2"
        env = "dev"
    }
    file = "userdata1.sh"
}
