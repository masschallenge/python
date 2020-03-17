execute "install-python" do
    command 'sudo add-apt-repository ppa:deadsnakes/ppa'
    command 'sudo apt-get update'
    command 'sudo apt-get install python3.6'
    command 'sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1'
    not_if { ::File.exists?(pip_binary) }
  end