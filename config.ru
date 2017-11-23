# frozen_string_literal: true

require 'sphynx'
require 'grape'

require './app/initializer'
require './app/api'
require './app/user'

SphynxGrape::Initializer.configure

run SphynxGrape::Api
