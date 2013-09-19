module ApplicationHelper
	def avatar_url(user)
		if user.avatar_url.present?
			user.avatar_url
		else
			gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
			"http://gravatar.com/avatar/#{gravatar_id}.jpg?s=100&d=mm"
		end
	end
end
