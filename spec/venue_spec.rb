require('spec_helper')

describe(Venue) do
  it("ensures a location exists") do
    venue = Venue.new({:location => ""})
    expect(venue.save()).to(eq(false))
  end

  it("capitalizes the venue") do
    venue = Venue.create({:location => "cityhall"})
    expect(venue.location()).to(eq("Cityhall"))
  end


end
