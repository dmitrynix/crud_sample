class CrudController < ApplicationController
  respond_to :html

  def index
    @objects = object_class.all
  end

  def new
    @object = object_class.new
  end

  def create
    @object = object_class.create params[params_key]
    if @object.save
      redirect_to [controller_name]
    else
      render 'new'
    end
  end

  def edit
    @object = object_class.find params[:id]
  end

  def update
    @object = object_class.find params[:id]
    if @object.update_attributes params[params_key]
      redirect_to [controller_name]
    else
      render 'edit'
    end
  end

  def destroy
    @object = object_class.find params[:id]
    @object.destroy
    respond_with @object
  end

  protected

  def object_class
    controller_name.singularize.camelize.constantize
  end

  def params_key
    controller_name.singularize
  end
end
