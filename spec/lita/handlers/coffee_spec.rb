require 'spec_helper'

describe Lita::Handlers::Coffee, lita_handler: true do

  describe "#test" do
    it "increases the term's score by one and says the new score" do
      send_command("coffee")
      expect(replies.last).to eq("Hoy le toca a José Guerrero")
      puts replies.last
    end
  end

end
