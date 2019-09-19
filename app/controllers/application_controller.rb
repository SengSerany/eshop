class ApplicationController < ActionController::Base
	include AdminOrNot
	include CurrentCart
    before_action :set_cart
	before_action :check_if_admin
end
