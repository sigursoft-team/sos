# frozen_string_literal: true

rackup 'config.ru'

threads_count = ENV.fetch('PUMA_THREADS', 5).to_i
threads threads_count, threads_count

port ENV.fetch('PORT', 3000), ENV.fetch('HOST', '127.0.0.1')

workers ENV.fetch('WORKERS', 1).to_i
