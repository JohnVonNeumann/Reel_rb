module UsersHelper
  #helper files provide something of a model file for views, in this instance
  #we are creating a file that helps the user view pull

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 } )
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    # In Ruby, the MD5 hashing algorithm is implemented using the
    # hexdigest method, which is part of the Digest library:
    # We are required to downcase the email as it will ensure our
    # md5 hash result is downcase
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")

    # MD5 Example
    # >> email = "MHARTL@example.COM"
    # >> Digest::MD5::hexdigest(email.downcase)
    # => "1fda4469bcbec3badf5418269ffc5968"
  end
end
