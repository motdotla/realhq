namespace :realhq do
  namespace :scottmotte do
    desc "All"
    task :all => [:application, :github, :resume, :portfolio, :twitter, :community]

    desc "Application"
    task :application do |rake_task|
      task  = Realhq::Task.new(rake_task)
      task.application_url
      task.open
    end

    desc "GitHub"
    task :github do |rake_task|
      task  = Realhq::Task.new(rake_task)
      task.github_url
      task.open
    end

    desc "Resume"
    task :resume do |rake_task|
      task  = Realhq::Task.new(rake_task)
      task.resume_url
      task.open
    end

    desc "Portfolio"
    task :portfolio do |rake_task|
      task  = Realhq::Task.new(rake_task)
      task.portfolio_url
      task.open
    end

    desc "Twitter"
    task :twitter do |rake_task|
      task  = Realhq::Task.new(rake_task)
      task.twitter_url
      task.open
    end

    desc "Community"
    task :community do |rake_task|
      task  = Realhq::Task.new(rake_task)
      task.riversidejs_url
      task.open

      task.startupie_url
      task.open

      task.riversideio_url
      task.open
    end
  end

  task :scottmotte => ["scottmotte:all"]
end