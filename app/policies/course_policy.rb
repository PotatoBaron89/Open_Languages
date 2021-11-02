# frozen_string_literal: true

class CoursePolicy
  # before_action :authenticate_user!
  # before_action :check_auth

  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    return true if @user.has_any_role?(:super_user, :admin)
    false
  end

  def new?
    create?
  end

  def update?
    return true if @user.has_any_role?(:super_user, :admin)
    false
  end

  def edit?
    update?
  end

  def destroy?
    true
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end

    private

    attr_reader :user, :scope
  end
end
