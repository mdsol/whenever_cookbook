gem_package 'activesupport' do
  version '2.3.4'
  action :install
end

gem_package 'whenever' do
  version node[:whenever][:gem_version]
  action :install
end
