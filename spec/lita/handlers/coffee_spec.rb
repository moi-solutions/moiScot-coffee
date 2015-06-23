require 'spec_helper'

describe Lita::Handlers::Coffee, lita_handler: true do
  describe "#test" do
    it "Respond correct name" do
      send_command("coffee")
      expect(replies.last).to eq("Hoy le toca a Paulo McNally")
    end
  end
end
