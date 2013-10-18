template "#{node[:whenever][:whenever_path]}/config/schedule.rb" do
  variables({
    :whenever_tasks => node[:whenever][:whenever_tasks]
  })
  action :create
end

execute 'whenever' do
  cwd "#{node[:whenever][:whenever_path]}"
  # After below command is run, the crontab file is updated 
  #   with a section for whenever tasks, marked by a beginning and ending comment
  #   e.g. # Begin / End Whenever generated tasks for: '#{node[:application]}'
  #
  command "whenever --update-crontab '#{node[:application]}'" 
  action :run
end
