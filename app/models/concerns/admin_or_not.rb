module AdminOrNot

	private

	def check_if_admin
		if current_user != nil && current_user.email == "cranyseng@gmail.com" && current_user.is_admin == false
			current_user.update(is_admin: true)
		end
	end

end