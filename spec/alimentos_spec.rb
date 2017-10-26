require "spec_helper"
require "./lib/alimentos/alimento"
RSpec.describe Alimentos do
#  it "Tiene una a version number" do
#    expect(Alimentos::VERSION).not_to be nil
#  end
  before :each do
    @huevoFrito = Alimento.new("Huevo Frito", 14.1, 0.0, 19.5)
  end

  it "El alimento tiene nombre?" do
    expect(@huevoFrito.nombre).not_to be nil
  end

  it "El alimento tiene proteinas?" do
    expect(@huevoFrito.proteinas).not_to be nil
  end

  it "El alimento tiene glucidos?" do
    expect(@huevoFrito.glucidos).not_to be nil
  end
end
