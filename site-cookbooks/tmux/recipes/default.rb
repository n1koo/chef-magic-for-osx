include_recipe "homebrew"

%w[tmux].each do |pkg|
  package pkg
end

cookbook_file "#{ENV['HOME']}/.tmux.conf" do
  source ".tmux.conf"
  mode 00644
end
