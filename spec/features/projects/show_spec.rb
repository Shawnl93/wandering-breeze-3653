require 'rails_helper'

RSpec.describe 'the projects show page' do
  before :each do
    recycled_material_challenge = Challenge.create!(theme: "Recycled Material", project_budget: 1000)
    furniture_challenge = Challenge.create!(theme: "Apartment Furnishings", project_budget: 1000)

    @news_chic = recycled_material_challenge.projects.create!(name: "News Chic", material: "Newspaper")

  end
  it 'displays the projects name and material' do
    visit "/projects/#{@news_chic.id}"
  end
end
