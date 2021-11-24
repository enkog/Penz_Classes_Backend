class UserSerializer
  def initialize(user)
    @user = user
  end

  def as_json
    {
      user_id: user.id,
      username: user.username,
      token: AuthenticationTokenService.call(user.id)
    }
  end

  private

  attr_reader :user
end
