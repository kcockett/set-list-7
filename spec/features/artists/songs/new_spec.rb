require 'rails_helper'

RSpec.describe 'Artists songs new' do
  before :each do
    @prince = Artist.create!(name: 'Prince')
    @purple = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 8599)
    @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 665, play_count: 99)
  end
  describe 'Lesson: Rails form_with' do
    it 'Can create a new song attached to a given artist' do
      visit '/artist/#{@prince.id/songs/new}'
      save_and_open_page
      
      expect(page).to have_content("New song for #{@prince.name}"

      fill_in "title", with: "Little Red Corvette"
      fill_in "length", with: "245"
      fill_in "play_count", with: "99"
      click_button "Create song"



    end
  end
end