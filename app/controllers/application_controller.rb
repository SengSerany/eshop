class ApplicationController < ActionController::Base
	include AdminOrNot
	include CurrentCart
	include CurrentProfil
    
	before_action :check_if_admin
	before_action :set_cart
	before_action :set_profil
end
