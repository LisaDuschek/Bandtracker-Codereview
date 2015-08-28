require('spec_helper')

describe(Band) do
  it("ensures a name exists") do
    band = Band.new({:name => ""})
    expect(band.save()).to(eq(false))
  end

  it("converts the name to uppercase") do
    band = Band.create({:name => "jimmy hendrix"})
    expect(band.name()).to(eq("Jimmy Hendrix"))
  end


end
