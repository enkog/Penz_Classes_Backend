class UserSerializer
  def initialize(user)
    @user = user
  end

  def as_json
    {
      token: AuthenticationTokenService.call(user.id)
    }
  end

  private

  attr_reader :user
end
