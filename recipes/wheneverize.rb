template "#{node[:whenever][:whenever_path]}/config/schedule.rb" do
  variables({
    :whenever_tasks => node[:whenever][:whenever_tasks]
  })
  action :create
end

execute 'whenever' do
  cwd "#{node[:whenever][:whenever_path]}"
  command "whenever --update-crontab '#{node[:application]}_#{node[:rails_env]}'"
  action :run
end
