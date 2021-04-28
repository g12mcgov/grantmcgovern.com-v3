class AuthenticateUser
  prepend SimpleCommand

  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_accessor :email, :password

  def user
    current_user = User.find_by_email(email)
    unless current_user.present?
      errors.add :message, "Invalid email or password"
      return nil
    end

    # Check password
    unless current_user.valid_password?(password)
      errors.add :message, "Invalid email or password"
      return nil
    end

    current_user
  end
end

