require 'spec_helper'

describe PostsController do
  it 'should create a new post' do
    visit '/posts'

    click_link 'New'

    fill_in 'Title', :with => 'Post1'
    fill_in 'Content', :with => 'This is a content'

    click_button 'Create Post'

    expect(page).to have_content 'Post1'
  end

  it 'should create a new post' do
    Post.create :title => 'Post1', :content => 'This is a content'

    visit '/posts'

    click_link 'Post1'

    fill_in 'Title', :with => 'Change post1'
    fill_in 'Content', :with => 'This is other content'

    click_button 'Update Post'

    expect(page).to have_content 'Change post1'
  end
end
