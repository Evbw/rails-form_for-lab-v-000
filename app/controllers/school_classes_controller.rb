class SchoolClasses < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_classes = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(post_params(:title, :room_number)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(:params[:id])
  end

  def update
  end

end
