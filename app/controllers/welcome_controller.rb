class WelcomeController < ApplicationController
before_filter :authenticate_user!, :except => ["index"]


def home
 @user = User.all 
 @role_id_info = User.find(current_user.id).role_id
 $name_r = Role.find_by(:id => @role_id_info).name 
end


end