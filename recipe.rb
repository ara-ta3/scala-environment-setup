package "java-1.7.0-openjdk"

scala_version = "2.11.6"
execute "Download Scala File" do
  command sprintf("wget http://downloads.typesafe.com/scala/%s/scala-%s.tgz -O /usr/local/src/scala.tgz", scala_version, scala_version)
  cwd "/usr/local/src/"
  not_if "test $(ls /usr/local/src/scala.tgz)"
end

execute "Unzip Tar File" do
  command "tar xzvf scala.tgz"
  cwd "/usr/local/src/"
end

template "/home/vagrant/.bashrc" do
  action :create
  source "templates/bashrc"
  variables(scala_path: sprintf("/usr/local/src/scala-%s", scala_version))
end

