# frozen_string_literal: true

require 'rubygems'
require 'bundler'
require 'roda'
require_relative '../routes/sos.rb'

Bundler.require(:default, ENV["RACK_ENV"])

class SOSApp < Roda
  plugin :render, escape: true
  plugin :assets, css: ["main.sass"]

  route do |r|
    r.assets

    r.on "api" do
      r.run SosApi
    end
  end
end

require_relative '../config/initializers/sequel'
