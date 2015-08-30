require('spec_helper')

describe('the index path', {:type => :feature}) do
  it('allows the user to see a list of bands on the index') do
    visit('/')
    expect(page).to have_content('Band - Venue Tracker')
  end

  it('allows the user to add a band') do
    visit('/')
    fill_in('name', :with => 'Mumford and Sons')
    click_button('ADD BAND')
    expect(page).to have_content('Mumford and Sons')
  end

  it('allows the user to add a venue') do
    visit('/')
    fill_in('place', :with => 'The Emirates Stadium')
    click_button('ADD VENUE')
    expect(page).to have_content('The Emirates Stadium')
  end
end
