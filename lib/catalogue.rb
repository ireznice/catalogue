require 'catalogue/version'
require 'logger'
require 'catalogue/config'
require 'catalogue/database'

module Catalogue
  class << self
    def config
      @config = Catalogue::Config.new File.join(Catalogue.root, 'config', 'catalogue.yml')
    end

    def root
      File.expand_path('..', '__FILE__')
    end

    def env
      ENV['RAILS_ENV'] || ENV['RACK_ENV'] || ENV['ENV'] || 'development'
    end

    def db
      @db = Catalogue::Database.new
    end
  end
end

