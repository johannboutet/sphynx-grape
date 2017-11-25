# frozen_string_literal: true

require 'grape'
require 'sphynx'

require './app/initializer'
require './app/api'
require './app/user'

SphynxGrape::Initializer.configure

run SphynxGrape::Api
