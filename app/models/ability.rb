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
    when University
      can :manage, Major
      can :manage, MajorGroupExam
    end
  end
end
