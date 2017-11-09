user_1 = User.create(:username => "jeff", :email => "jeff.email", :password => "password")
user_2 = User.create(:username => "beyang", :email => "beyang.email", :password => "password")
user_3 = User.create(:username => "jess", :email => "jess.email", :password => "password")
user_4 = User.create(:username => "seth", :email => "seth.email", :password => "password")

character_1 = Character.create(:name => "Barry", :strength => 10,:intelligence => 10,:dexterity => 10,:wisdom => 10,:charisma => 10,:constitution => 10, :user_id => user_1.id)
character_2 = Character.create(:name => "Sara", :strength => 10,:intelligence => 10,:dexterity => 10,:wisdom => 10,:charisma => 10,:constitution => 10, :user_id => user_2.id)
character_3 = Character.create(:name => "Samantha", :strength => 10,:intelligence => 10,:dexterity => 10,:wisdom => 10,:charisma => 10,:constitution => 10, :user_id => user_2.id)
character_4 = Character.create(:name => "Rachel", :strength => 10,:intelligence => 10,:dexterity => 10,:wisdom => 10,:charisma => 10,:constitution => 10, :user_id => user_4.id)
character_4 = Character.create(:name => "Charlie Day", :strength => 8,:intelligence => 2,:dexterity => 2,:wisdom => 1,:charisma => 100,:constitution => 8, :user_id => user_4.id)
character_4 = Character.create(:name => "Jerome", :strength => 10,:intelligence => 10,:dexterity => 10,:wisdom => 10,:charisma => 10,:constitution => 10, :user_id => user_4.id)
t.string  "name"
t.integer "strength"
t.integer "intelligence"
t.integer "dexterity"
t.integer "wisdom"
t.integer "charisma"
t.integer "constitution"
t.integer "user_id"
