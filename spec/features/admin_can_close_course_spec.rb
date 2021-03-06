require "rails_helper"

feature "admin can close course" do
  scenario "via course page" do
    course = create(:course, workflow_state: 'opened')
    email = create(:email, interval: 1, course: course)
    
    signed_in_admin
    visit hi_there.course_path(course)
    click_link t('hi_there.courses.actions.close')
    
    expect(page).to have_content t('hi_there.courses.closed')
    expect(page).to have_content t('hi_there.courses.current_state.closed')
  end
end