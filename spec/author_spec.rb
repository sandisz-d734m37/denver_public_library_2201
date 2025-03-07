require './lib/book'
require './lib/author'
require 'pry'

describe Author do
  charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

  it "Exists" do
    expect(charlotte_bronte).to be_an_instance_of(Author)
  end

  it "has a name" do
    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

  it "can write books" do
    expect(jane_eyre.class).to eq(Book)
    expect(jane_eyre.title).to eq("Jane Eyre")
  end

  villette = charlotte_bronte.write("Villette", "1853")

  it "can write multiple books" do
    expect(charlotte_bronte.books).to eq([jane_eyre, villette])
  end
end
