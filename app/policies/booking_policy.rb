class BookingPolicy < ApplicationPolicy

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    record.user_id == user.id || record.car.user_id == user.id
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
