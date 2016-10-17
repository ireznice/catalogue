
require 'settingslogic'

module Catalogue
  class Config < Settingslogic
    def initialize(source = nil, section = nil)

      self.class.namespace Catalogue.env
      super source, section
    end
  end
end

