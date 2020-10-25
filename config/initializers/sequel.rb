# frozen_string_literal: true

Sequel.connect("sqlite://db/#{ENV["RACK_ENV"]}.sqlite3")
