# frozen_string_literal: true

require 'grape'

module SphynxGrape
  class Api < Grape::API
    format :json

    get do
      body false
    end
  end
end
