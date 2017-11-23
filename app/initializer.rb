module SphynxGrape
  module Initializer
    def self.configure
      Sphynx.configure do |config|
        config.dispatch_requests = [['POST', /^login$/]]
        config.revocation_requests = [['GET', /^logout$/]]
        config.secret = '67e5e24a546b607cbecc962a62a6db5b5ccf5a9aac22f1fd7ab40e1c085b88c7151259cabe08988688a941a1fc388355ca0db93a4e362c3939999f70279f2d7e'
        config.scopes = {
          user: { repository: SphynxGrape::User }
        }
      end
    end
  end
end
