class ImagesController < ApplicationController
  before_action :authenticate!, only: [:new, :create]

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new secure_params
    @image.identity = current_identity

    if @image.save
      return redirect_to images_path, notice: t('.created', model: @image.class.model_name.human)
    end

    render :new
  end

  private
  def secure_params
    params.require(:image).permit :name, :description,
      :category, :tags_text, :photo
  end
end
