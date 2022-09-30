class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDoVSk+BTphjFs5MjFW0RmGeFqbsbM4sw4GnFLIAIzgYSBt6ZQnG7G5RN7TppWb0tWlMGLp5R/UHvvFsM+bQiVSLrv5jxI2qbAPTnTqpRXziuVACuCNKGLUDKfpZWg8uhsx9NpE7OEARGtLrikbMN+4tEhnvjusOzZlqyUTQYIgg0WM5KXahATxQIfY+U2VToIlUUyRExmeVX+rn91ERwSwbFoxTU+VBf0LezuSPKsam7pzrJhcZlaDgI/K15KLZld3eMVhuSgYqRDs3stKnccCp9cuk9m3S4C49y4kGvKHXmIzkDS98ZG7zkBIoRfC5cxvVur9qhhjyiAdCXr7eW7n',
  }
}
