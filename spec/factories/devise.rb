FactoryBot.define do
  factory :user1 do
    id { 1 }
    email { 'test@user.com' }
    password { 'qwerty' }
    firstname { 'Test' }
    lastname { 'user1' }
  end
end
