require "rails_helper"

feature "visitor subscribes to course" do
  scenario "via hosted form" do
    course = create(:course, :opened)
    visit hi_there.new_subscription_path(course_id: course.id)

    fill_in "Email", with: 'adam@example.com'
    click_button t('hi_there.subscriptions.subscribe')

    expect(page).to have_content t('hi_there.subscriptions.confirmation_required')

    subscription = HiThere::Subscription.last

    visit hi_there.confirm_subscription_path(token: subscription.token)

    expect(page).to have_content t('hi_there.subscriptions.confirmed')
  end
end