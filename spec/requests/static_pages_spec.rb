require 'spec_helper'

describe "Static pages" do

	describe "Home page" do

		it "should have the content 'My Sample of text'" do
			visit '/static_pages/home'
			expect(page).to have_content('My Sample of text')
		end
		it "Should contain correct title: 'Ruby Rails App | Home'" do
			visit '/static_pages/home'
			expect(page).to have_title('Ruby Rails App | Home')
		end
	end

	describe "Help page" do

		it "should contain text 'This is the help content of my help page'" do
			visit '/static_pages/help'
			expect(page).to have_content('This is the help content of my help page')
		end
		it "Should contain correct title: 'Ruby Rails App | Help'" do
			visit '/static_pages/help'
			expect(page).to have_title('Ruby Rails App | Help')
		end
	end

	describe "About page" do

		it "Should contain text 'About page is intended to answer most common questions'" do
			visit '/static_pages/about'
			expect(page).to have_content('About page is intended to answer most common questions')
		end

		it "Should contain correct title: 'Ruby Rails App | About'" do
			visit '/static_pages/about'
			expect(page).to have_title('Ruby Rails App | About')
		end
	end

	describe "Contact page" do
		it "Should contain text 'On this page you can find contacts'" do
			visit '/static_pages/contacts'
			expect(page).to have_content('On this page you can find contacts')
		end
		it "Should contain title: 'Ruby Rails App | Contacts'" do
			visit '/static_pages/contacts'
			expect(page).to have_title('Ruby Rails App | Contacts')
		end
	end
end