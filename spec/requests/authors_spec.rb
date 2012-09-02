require 'spec_helper'

describe AuthorsController do
  context 'create a author' do
    it 'when is valid' do
      visit '/authors'

      click_link 'New'

      fill_in 'Name', :with => 'Author1'

      click_button 'Create Author'

      expect(page).to have_content 'Name: Author1'
    end

    it 'when is invalid' do
      visit '/authors'

      click_link 'New'

      click_button 'Create Author'

      expect(page).to have_link 'Try again'
    end
  end

  it 'should create a new author' do
    Author.create :name => 'Author1'

    visit '/authors'

    click_link 'Author1'

    fill_in 'Name', :with => 'Change author :P'

    click_button 'Update Author'

    expect(page).to have_content 'Change author :P'
  end
end
