class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user == user
  end

  def edit?
    user == user
  end

  def update?
    user == user
  end

end
