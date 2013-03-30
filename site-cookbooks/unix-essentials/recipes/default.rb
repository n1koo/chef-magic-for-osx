include_recipe "homebrew"

%w[watch readline wget vnstat nmap iperf gettext].each do |pkg|
  package pkg
end

cookbook_file "#{ENV['HOME']}/.screenrc" do
  source "screenrc"
  mode 00644
end
