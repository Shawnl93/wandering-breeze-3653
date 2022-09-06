require 'rails_helper'

RSpec.describe 'the projects show page' do
  before :each do
    @recycled_material_challenge = Challenge.create!(theme: "Recycled Material", project_budget: 1000)
    @project = @recycled_material_challenge.projects.create!(name: "News Chic", material: "Newspaper")

    visit "/projects/#{@project.id}"
  end
  it 'displays the projects name and material' do
    expect(page).to have_content("News Chic")
    expect(page).to have_content("Newspaper")
  end

  it "see theme of the challenge projects belongs to" do

  end
end
