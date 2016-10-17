
require 'sequel'


module Catalogue
  class Database
    def initialize
      config = Catalogue.config[:database]
      @db = Sequel.connect('sqlite://' + config['database'], max_connections: config['pool']).tap do |db|
        db.timezone = :utc
      end

      require 'catalogue/models/type'
      require 'catalogue/models/meta'
      require 'catalogue/models/item'

    end
    attr_reader :db

    private
    #attr_reader :db
  end
end
