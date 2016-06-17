class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    # Can READ anything
    can :read, :all

    if user.persisted? # in db, so logged in
      # Can MANAGE (create, read, update, destroy, etc.) own Post
      can :manage, Location, user: user

      # Can CREATE and DESTROY own Like
      can :create,  Menu, user: user
      can :destroy, Menu, user: user
    end
  end
end
