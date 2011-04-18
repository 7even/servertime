class User < ActiveRecord::Base
  def self.authorize(login, password)
    if user = find_by_login(login)
      if user.hashed_password == encrypt_password(password, user.salt)
        user
      end
    end
  end
  
  def self.encrypt_password(password, salt)
    Digest::SHA2.hexdigest(password + "wibble" + salt)
  end
  
  def generate_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
end
