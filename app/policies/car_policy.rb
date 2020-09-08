class CarPolicy < ApplicationPolicy

  def create?
    true
  end

  def new?
    true
  end

  def show?
    # record == @car
    # user == current_user
    # record.user == user
    true
  end

  def edit?
    record.user == user
  end


  def update?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
