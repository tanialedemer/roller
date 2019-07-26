class NivelLibreController < ApplicationController
  def index
    @nivel_libres= NivelLibre.all()
  end

  def show
    @nivel_libre = NivelLibre.find(params[:id])
  end

  def new
    @nivel_libre = NivelLibre.new
  end

  def create
    @nivel_libre=NivelLibre.new
    @nivel_libre.description=params[:nivel_libre][:description]

    if @nivel_libre.save
      redirect_to  nivel_libre_index_path
    else
      render "new"
    end
  end

  def edit
    id=params[:id]
    @nivel_libre=NivelLibre.find(id)
  end

  def update
    id=params[:nivel_libre][:id]
    @nivel_libre=NivelLibre.find(id)
    @nivel_libre.description=params[:nivel_libre][:description]

    if @nivel_libre.save
      redirect_to  nivel_libre_index_path
    else
      render "edit"
    end
  end

  def destroy
    id=params[:id]
    nivel_libre=NivelLibre.find(id)
    nivel_libre.destroy
    redirect_to  nivel_libre_index_path
  end
end
