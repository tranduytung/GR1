class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    case user
    when Examinee
      can [:edit, :update, :show], Examinee, id: user.id
      can :read, :all
    when Admin
      can :manage, :all
    end
  end
end
