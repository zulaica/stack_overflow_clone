FactoryGirl.define do
  factory(:question) do
    title('Rails Integration')
    body('How do I get to be mega dope?')
    published(Time.now)
  end
end
