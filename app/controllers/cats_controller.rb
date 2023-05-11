class CatsController < ApplicationController
  def index
    @cats = Cat.all.order({ :created_at => :desc })

    render({ :template => "cats/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_cats = Cat.where({ :id => the_id })

    @the_cat = matching_cats.at(0)

    render({ :template => "cats/show.html.erb" })
  end

  def create
    the_cat = Cat.new
    the_cat.name = params.fetch("query_name")

    if the_cat.valid?
      the_cat.save
      redirect_to("/cats", { :notice => "Cat created successfully." })
    else
      redirect_to("/cats", { :alert => the_cat.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_cat = Cat.where({ :id => the_id }).at(0)

    the_cat.name = params.fetch("query_name")

    if the_cat.valid?
      the_cat.save
      redirect_to("/cats/#{the_cat.id}", { :notice => "Cat updated successfully." })
    else
      redirect_to("/cats/#{the_cat.id}", { :alert => the_cat.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_cat = Cat.where({ :id => the_id }).at(0)

    the_cat.destroy

    redirect_to("/cats", { :notice => "Cat deleted successfully." })
  end
end
