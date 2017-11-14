class Character < ActiveRecord::Base
  belongs_to :user

  def fill(params)
    self.name = params[:name]
    self.description = params[:description]
    self.race = params[:race]
    self.strength = params[:strength]
    self.intelligence = params[:intelligence]
    self.dexterity = params[:dexterity]
    self.wisdom = params[:wisdom]
    self.charisma = params[:charisma]
    self.constitution = params[:constitution]
    self.level = params[:level]
    self.save
  end
end
