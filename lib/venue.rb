class Venue < ActiveRecord::Base
  has_and_belongs_to_many(:bands)

validates(:location, {:presence => true})

before_save(:capitalize_location)

  scope(:not_done, -> do
    where({:done => false})
  end)

private

  define_method(:capitalize_location) do
    self.location=(location().capitalize!())
  end


end
