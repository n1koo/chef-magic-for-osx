mac_os_x_userdefaults 'Disable "natural" (Lion-style) scrolling' do
  domain 'NSGlobalDomain'
  key 'com.apple.swipescrolldirection'
  value 'false'
  type 'bool'
end

mac_os_x_userdefaults 'Menu bar: disable transparency' do
  domain 'NSGlobalDomain'
  key 'AppleEnableMenuBarTransparency'
  value 'false'
  type 'bool'
end

mac_os_x_userdefaults 'Finder: show hidden files by default' do
  domain 'com.apple.finder'
  key 'AppleShowAllFiles'
  value 'true'
  type 'bool'
end

mac_os_x_userdefaults 'Finder: show all filename extensions' do
  domain 'NSGlobalDomain'
  key 'AppleShowAllExtensions'
  value 'true'
  type 'bool'
end

mac_os_x_userdefaults 'Remove the auto-hiding Dock delay' do
  domain 'com.apple.dock'
  key 'autohide-delay'
  value '0'
  type 'float'
end

mac_os_x_userdefaults 'Remove the animation when hiding/showing the Dock' do
  domain 'com.apple.dock'
  key 'autohide-time-modifier'
  value '0'
  type 'float'
end

mac_os_x_userdefaults 'Automatically hide and show the Dock' do
  domain 'com.apple.dock'
  key 'autohide'
  value 'true'
  type 'bool'
end

mac_os_x_userdefaults 'Enable airdrop on ethernet' do
  domain 'com.apple.NetworkBrowser'
  key 'BrowseAllInterfaces'
  value 'true'
  type 'bool'
end

mac_os_x_userdefaults 'Avoid creating .DS_Store files on network volumes' do
  domain 'com.apple.desktopservices'
  key 'DSDontWriteNetworkStores'
  value 'true'
  type 'bool'
end

mac_os_x_userdefaults "enable time machine on unsupported volumes" do
  domain "com.apple.systempreferences"
  key "TMShowUnsupportedNetworkVolumes"
  value "1"
end

# stuff that cant be done via userdefaults

execute "show ~/Library" do
    command "chflags nohidden ~/Library"
end


