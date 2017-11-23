# frozen_string_literal: true

module SphynxGrape
  class Api < Grape::API
    format :json

    use Sphynx::Middlewares::GrapeMiddleware

    get do
      body false
    end
  end
end
