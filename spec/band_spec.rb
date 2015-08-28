require('spec_helper')

describe(Band) do
  it("ensures a name exists") do
    band = Band.new({:name => ""})
    expect(band.save()).to(eq(false))
  end

  it("capitalizes") do
    band = Band.create({:name => "jimmy"})
    expect(band.name()).to(eq("Jimmy"))
  end


end
