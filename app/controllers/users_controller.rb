class UsersController < ApplicationController
  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :created_at => :desc })

    render({ :template => "users/index" })
  end

  def show
    the_name = params.fetch("path_id")

    @the_user = User.where({ :username => the_name })

    render({ :template => "users/show" })
  end

end
