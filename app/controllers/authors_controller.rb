class AuthorsController < CrudController
  def create
    @object = object_class.new(params[:author])
    if @object.save
      redirect_to @object
    else
      render 'error'
    end
  end

  def show
    @object = Author.find params[:id]
  end
end
