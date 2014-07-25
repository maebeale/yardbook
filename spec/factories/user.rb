FactoryGirl.define do
  factory :user do
    sequence(:fname) {|n| "User #{n}"}
    lname 'Jones'
    blurb 'Was great'
    github_url 'site@github.com'
    twitter_url 'site@twitter.com'
    linkedin_url 'site@linkedin.com'
    image_url 'site@github.com'
    webpage 'site@site.com'
    cohort 'x'
    extra 'adsds'
    is_admin false
    sequence(:email) { |n| "emailfake#{n}@thefakestsite.com" }
    password 'password'
    password_confirmation 'password'
  end
end