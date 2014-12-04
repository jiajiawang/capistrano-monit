namespace :monit do
  desc 'Setup monit configuration'
  task :setup do
    on roles :web do
      config_file = "config/deploy/templates/monitrc.erb"
      # if no customized file, proceed with default
      unless File.exists?(config_file)
        config_file = File.join(File.dirname(__FILE__), "../../generators/capistrano/monit/templates/monitrc.erb")
      end
      str_io = StringIO.new(ERB.new(File.read(config_file)).result(binding))
      tmp_file = "#{fetch(:tmp_dir)}/monitrc"
      upload! str_io, tmp_file
      to_file = '/etc/monit/monitrc'
      sudo :mv, tmp_file, to_file
      sudo :chown, 'root:root', to_file
      sudo :chmod, '700', to_file
    end
  end

  desc 'Start monit'
  task :start do
    on roles :web do
      sudo :service, :monit, :start
    end
  end

  desc 'Restart monit'
  task :restart do
    on roles :web do
      sudo :service, :monit, :restart
    end
  end

  desc 'Stop monit'
  task :stop do
    on roles :web do
      sudo :service, :monit, :stop
    end
  end
end

desc 'Server setup tasks'
task :setup do
  invoke 'monit:setup'
  invoke 'monit:restart'
end
