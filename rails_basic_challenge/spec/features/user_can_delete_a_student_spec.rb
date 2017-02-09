require_relative '../rails_helper'

describe "when a user wants to delete a student" do
  scenario "the user clicks the delete button next to student name" do
    Student.create(name: "Bob")
    visit(students_path)

    expect page.has_content?("Bob")

    click_on("delete")

    expect page.has_no_content?("Bob")
  end
end
