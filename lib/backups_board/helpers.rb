module BackupsBoard
  module Helpers
    def panelise repo
      data = HTTParty.get(
        "https://api.travis-ci.org/repos/#{repo}/builds",
        headers: { Accept: 'application/vnd.travis-ci.2+json' }
      )

      build = data['builds'].first
      build['name'] = strip_name repo

      build
    end

    def strip_name repo
      repo.gsub('theodi/backups-','')
    end
  end
end
