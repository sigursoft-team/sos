# frozen_string_literal: true

class SosApi < Roda
  route do |r|
    # /sos branch
    r.on "sos" do
      # Set variable for all routes in /sos branch
      @message = 'SOS'

      # /sos request
      r.is do
        # GET /sos request
        r.get do
          "#{@message}!"
        end

        # POST /sos request
        r.post do
          puts "Someone said #{@message}!"
          r.redirect
        end
      end
    end
  end
end
