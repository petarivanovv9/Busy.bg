class AccountantsController < ApplicationController
  def index
    @accountants=User.where(role_id: Role.find_by_name('Accountant').id)
  end
end