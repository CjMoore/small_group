require_relative '../rails_helper'

describe "When user fills out form" do

  scenario "they are able to add a new student" do
    visit(new_student_path)

    fill_in('name', :with => "Dude")

    save_and_open_page

    click_on('Create Student')

    expect page.has_current_path?(students_path)

    expect page.has_content?("Dude")

    click_on("Dude")

    expect page.has_current_path?(student_path(Student.find(1)))
  end
end
