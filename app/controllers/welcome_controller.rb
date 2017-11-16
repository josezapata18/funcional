class WelcomeController < ApplicationController
  def index
  end
  
  def calificar
    @metters = HasMatter.joins(:user,:metter).where("permission_level = 'Estudiante' and email='"+current_user.email+"'")
    #@metters = Metter.all
  end
  
end
