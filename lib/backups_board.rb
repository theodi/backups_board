require 'sinatra/base'
require 'tilt/erubis'
require 'json'
require 'yaml'
require 'httparty'

require_relative 'backups_board/racks'
require_relative 'backups_board/helpers'

module BackupsBoard
  class App < Sinatra::Base
    helpers do
      include BackupsBoard::Helpers
    end

    get '/' do
      headers 'Vary' => 'Accept'

      respond_to do |wants|
        wants.html do
          @title = 'Backups Board'
          @repos = YAML.load_file('config/repos.yaml').map do |r|
            panelise r
          end
          erb :index, layout: :default
        end

        wants.json do
          {
            app: 'BackupsBoard'
          }.to_json
        end
      end
    end

    # start the server if ruby file executed directly
    run! if app_file == $0
  end
end
