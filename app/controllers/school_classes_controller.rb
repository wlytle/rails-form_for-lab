class SchoolClassesController < ApplicationController
  def index
    @classes = SchoolClass.all
  end

  def new
    @class = SchoolClass.new
  end

  def create
    strong_params = get_params
    @class = SchoolClass.create(strong_params)
    redirect_to school_class_path(@class)
  end

  def show
    get_class
  end

  def edit
    get_class
  end

  def update
    get_class
    @class.update(get_params)

    redirect_to school_class_path(@class)
  end

  private

  def get_class
    @class = SchoolClass.find(params[:id])
  end

  def get_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
