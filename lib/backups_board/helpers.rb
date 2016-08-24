module BackupsBoard
  module Helpers
    def panelise repo
      data = HTTParty.get(
        "https://api.travis-ci.org/repos/#{repo}/builds",
        headers: { Accept: 'application/vnd.travis-ci.2+json' }
      )

      build = data['builds'].first
      build['name'] = repo

      build
    end
  end
end
