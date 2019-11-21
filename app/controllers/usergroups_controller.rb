class UsergroupsController < ApplicationController
  def join_crew
    @usergroup = Usergroup.new
  end
end
