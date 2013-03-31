directory "#{ENV['HOME']}/Applications" do
  mode 00755
end

dmg_package "SourceTree" do
  dmg_name "SourceTree"
  source "http://downloads.atlassian.com/software/sourcetree/SourceTree_1.5.8.dmg"
  destination "#{ENV['HOME']}/Applications"
  action :install
end

