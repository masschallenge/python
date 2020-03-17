execute "install-python" do
    command 'sudo add-apt-repository ppa:deadsnakes/ppa'
    command 'sudo apt-get update'
    command 'sudo apt-get install python3.6'
end

alternatives 'python-set-version-3' do
    link_name 'python3'
    path '/usr/bin/python3.6'
    priority 100
    action :install
end