module CurrentProfil

	private

	def set_profil
		if current_user != nil
			@account = Account.find_by(user_id: current_user.id)
			if @account == nil
				return @account = Account.create(user_id: current_user.id)
			end
		end
	end
end