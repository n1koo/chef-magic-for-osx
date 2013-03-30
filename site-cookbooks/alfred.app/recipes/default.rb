directory "#{ENV['HOME']}/Applications" do
  mode 00755
end

zip_package "Alfred" do
  destination "#{ENV['HOME']}/Applications"
  source "http://cachefly.alfredapp.com/Alfred_2.0.2_178.zip"
end

