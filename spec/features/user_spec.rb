require 'rails_helper'

feature "visiting the sign up page" do 

	scenario "the unauthenticated user fills out form with passwords that do not match" do

		#visit root_path
		visit "/users/sign_up" 
		
        fill_in "Password", with: "password" 	
        fill_in "Password confirmation", with: "sword" 	
		click_button "Sign up"

		expect(page).to have_text("Password confirmation doesn't match")
	end

	

	scenario "the unauthenticated user fills out form with passwords with less than 6 characters" do

		#visit root_path
		visit "/users/sign_up" 
		
        fill_in "Password", with: "p" 	
        fill_in "Password confirmation", with: "p" 	
		click_button "Sign up"

		expect(page).to have_text("Password is too short")
	end


		scenario "successfully submit user sign in" do

		#visit root_path
		visit "/users/sign_up" 
		fill_in "user_first_name", with: "first" 
		fill_in "user_last_name", with: "last"	
        fill_in "Email", with: "validemail@domain.com" 	
        fill_in "Password", with: "validpassword" 	
        fill_in "Password confirmation", with: "validpassword" 	
		click_button "Sign up"

		expect(page).to have_text("Welcome! You have signed up successfully.")
	end

end

