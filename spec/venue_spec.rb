require('spec_helper')

describe(Venue) do
  it("ensures a location exists") do
    venue = Venue.new({:location => ""})
    expect(venue.save()).to(eq(false))
  end

  it("converts the venue to uppercase") do
    venue = Venue.create({:location => "city park"})
    expect(venue.location()).to(eq("City Park"))
  end


end
