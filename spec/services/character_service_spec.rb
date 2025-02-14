require 'rails_helper'

RSpec.describe CharacterService do
  before :each do
    @service = CharacterService.new
  end

  describe 'instance methods' do
    describe '#affiliation' do
     
      expect(@service.affiliation('Fire Nation').class).to eq(Array)
      expect(@service.affiliation('Fire Nation')[0].class).to eq(Hash)
      expect(@service.affiliation('Fire Nation')[0]).to have_key(:enemies)
      expect(@service.affiliation('Fire Nation')[0]).to have_key(:name)
    end
  end
end