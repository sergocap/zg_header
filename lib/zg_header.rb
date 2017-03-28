require 'zg_header/version'
require 'configliere'

Settings.read File.expand_path('../../config/' + Rails.env + '_settings.yml', __FILE__)

module ZgHeader
  class Engine < ::Rails::Engine
    def self.sites
      @sites ||= YAML.load_file(File.expand_path('../../config/sites.yml', __FILE__)).try(:[], Rails.env)
    end
  end
end
