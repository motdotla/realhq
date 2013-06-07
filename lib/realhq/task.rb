module Realhq
  class Task
    RAKE_NAMESPACE_DELIMITER = ":"

    def initialize(rake_task)
      @url        = nil
      @rake_task  = rake_task
    end

    def name
      split_rake_task[-1]
    end

    def namespace
      split_rake_task[-2]
    end

    def github_url
      @url = ["https://", name, ".com/", namespace].join
      @url
    end

    def resume_url
      @url = ["http://", namespace, ".com/assets/resume.pdf"].join
      @url
    end

    def portfolio_url
      @url = ["http://", namespace, ".com"].join
      @url
    end

    def twitter_url
      @url = ["http://twitter.com/", namespace].join
      @url
    end

    def riversidejs_url
      @url = ["http://meetup.com/riversidejs"].join
      @url
    end

    def startupie_url
      @url = ["http://meetup.com/startupie"].join
      @url
    end

    def riversideio_url
      @url = ["http://riverside.io"].join
      @url
    end

    def application_url
      @url = "https://gist.github.com/scottmotte/3d83f73d58b1fb994f26"
      @url
    end

    def open
      puts @url
      Launchy.open(@url)
    end

    private

    def split_rake_task
      @rake_task.name.split(RAKE_NAMESPACE_DELIMITER)
    end
  end
end