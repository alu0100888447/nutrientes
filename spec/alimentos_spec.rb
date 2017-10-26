require "spec_helper"
require "./lib/alimentos/alimento"
RSpec.describe Alimentos do
  it "has a version number" do
    expect(Alimentos::VERSION).not_to be nil
  end
  before :each do
    @huevoFrito = Alimento.new("Huevo Frito", 14.1, 0.0, 19.5)
  end
end
