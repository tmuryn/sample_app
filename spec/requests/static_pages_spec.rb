require 'spec_helper'

describe "Static pages" do

	describe "Home page" do

		it "should have the content 'My Sample of text'" do
			visit '/static_pages/home'
			expect(page).to have_content('My Sample of text')
		end
	end

	describe "Help page" do

		it "should contain text 'This is the help content of my help page'" do
			visit '/static_pages/help'
			expect(page).to have_content('This is the help content of my help page')
		end
	end

	describe "About page" do

		it "Should contain text 'About page is intended to answer most common questions'" do

			visit '/static_pages/about'
			expect(page).to have_content('About page is intended to answer most common questions')
		end
	end

	describe "Home title test" do

		it "Should contain correct title: 'Ruby Rails App | Home'" do
			visit '/static_pages/home'
			expect(page).to have_title('Ruby Rails App | Home')
		end
	end

	describe "About title test" do

		it "Should contain correct title: 'Ruby Rails App | About'" do
			visit '/static_pages/about'
			expect(page).to have_title('Ruby Rails App | About')
		end
	end

	describe "Help title test" do

		it "Should contain correct title: 'Ruby Rails App | Help'" do
			visit '/static_pages/help'
			expect(page).to have_title('Ruby Rails App | Help')
		end
	end

end