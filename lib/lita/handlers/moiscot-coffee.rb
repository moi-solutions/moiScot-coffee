require 'lita'
require 'json'

module Lita
  module Handlers
    class Coffee < Handler

      route(/^coffee$/, :coffee, command: true, help: {
        'coffee' => 'MOi Solutions cofee asignation'
      })

      def coffee(response)
        # get day from now
        time = Time.new
        day = time.strftime("%a")

        # read data json file
        file = File.read('lib/lita/handlers/data.json')
        data_hash = JSON.parse(file)

        # compare day with data
        data_hash.each do |row|
          if row['day'] == day
            response.reply "Hoy le toca a #{row['name']}"
          end
        end

      rescue => e
        Lita.logger.error("Coffee#coffee raised #{e.class}: #{e.message}")
        response.reply "Coffee has turned off the internetz, #{e.class} is raising '#{e.message}'"
      end

    end

    Lita.register_handler(Coffee)
  end
end
