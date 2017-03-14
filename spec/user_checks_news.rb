require "spec_helper"
#
# feature "User posts and gets articles", %(
#   As a user
#   I want to submit a recipe name to see if it is delicious
#   So that I know with confidence what to cook.
#
#   Acceptance Criteria:
#   [X] When I visit the root path, I can see a form to submit a recipe name
#   [X] If I submit a recipe name with "pickled beets" in the name, I am
#       sent to a "results" page telling me that the recipe is delicious
#   [X] If I submit a recipe name without "pickled beets" in the name, I am
#       sent to a "results" page telling me that the recipe is not delicious
#   [X] From the "results" page, I am able to click a link bringing me back to
#       the home page
#   [X] If I submit a blank entry to the form, I am brought to an error page
#   [X] From the error page, I can click a link bringing me back to the home page
#
# ) do
#
#   before { visit '/' }
#
#   scenario "user submits a recipe name containing 'pickled beets'" do
#     fill_in 'Recipe Name', with: 'Fried pickled beets'
#     click_button 'Submit'
#
#     expect(page).to have_content("is a delicious recipe!")
#   end
#
#   scenario "user submits a recipe name without 'pickled beets'" do
#     fill_in 'Recipe Name', with: 'Random recipe'
#     click_button 'Submit'
#
#     expect(page).to have_content("is not a delicious recipe!")
#   end
#
#   scenario "user navigates back to the home page after checking a recipe name" do
#     fill_in 'Recipe Name', with: 'Fried pickled beets'
#     click_button 'Submit'
#
#     click_on 'Try again!'
#
#     expect(page).to have_current_path('/')
#     expect(page).to have_content("Instructions: Enter a recipe name here,")
#   end
#
#   scenario "user submits an empty form" do
#     fill_in 'Recipe Name', with: ''
#     click_button 'Submit'
#
#     expect(page).to have_current_path('/')
#     expect(page).to have_content("Error!")
#   end
#
#   scenario "user navigates back to the home page after submitting an empty form" do
#     fill_in 'Recipe Name', with: ''
#     click_button 'Submit'
#
#     click_on 'Try again!'
#
#     expect(page).to have_current_path('/')
#     expect(page).to have_content("Instructions: Enter a recipe name here,")
#   end
# end
