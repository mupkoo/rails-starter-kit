# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
    factory :user do
        email 'user@email.com'
        password 'pass1234'
    end
end
