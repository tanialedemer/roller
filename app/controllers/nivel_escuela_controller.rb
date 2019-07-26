class NivelEscuelaController < ApplicationController
  def index
    @nivel_escuelas= NivelEscuela.all()
  end

  def show
    @nivel_escuela = NivelEscuela.find(params[:id])
  end

  def new
    @nivel_escuela = NivelEscuela.new
  end

  def create
    @nivel_escuela=NivelEscuela.new
    @nivel_escuela.description=params[:nivel_escuela][:description]

    if @nivel_escuela.save
      redirect_to  nivel_escuela_index_path
    else
      render "new"
    end
  end

  def edit
    id=params[:id]
    @nivel_escuela=NivelEscuela.find(id)
  end

  def update
    id=params[:nivel_escuela][:id]
    @nivel_escuela=NivelEscuela.find(id)
    @nivel_escuela.description=params[:nivel_escuela][:description]

    if @nivel_escuela.save
      redirect_to  nivel_escuela_index_path
    else
      render "edit"
    end
  end

  def destroy
    id=params[:id]
    nivel_escuela=NivelEscuela.find(id)
    nivel_escuela.destroy
    redirect_to  nivel_escuela_index_path
  end
end
