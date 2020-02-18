require 'rails_helper'

# RSpec.describe Objective, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe Objective, type: :model do
  describe '#toggle_complete!' do
    it 'should switch complete to false if it began as true' do
      objective = Objective.create(complete: true)
      objective.toggle_complete!
      expect(objective.complete).to eq(false)
    end 
    it 'should switch complete to true if it began as false' do
      objective = Objective.create(complete: false)
      objective.toggle_complete!
      expect(objective.complete).to eq(true)  
    end   
  end   
end

