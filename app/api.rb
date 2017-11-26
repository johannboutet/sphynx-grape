# frozen_string_literal: true

module SphynxGrape
  class Api < Grape::API
    format :json

    use Sphynx::Middleware

    helpers Sphynx::GrapeHelper

    get allow_anonymous: true do
      body false
    end

    namespace :protected do
      before { authenticate_user! }

      get do
        {
          id: current_user.id,
          first_name: current_user.first_name,
          last_name: current_user.last_name
        }
      end
    end
  end
end
