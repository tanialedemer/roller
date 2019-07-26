class AthleteController < ApplicationController
  def index
    @athletes= Athlete.all()
  end

  def new
    @athlete = Athlete.new
  end

  def create
    @athlete=Athlete.new
    @athlete.apellido=params[:athlete][:apellido]
    @athlete.nombre=params[:athlete][:nombre]
    @athlete.doc=params[:athlete][:doc]
    @athlete.fecha_nac=params[:athlete][:fecha_nac]
    @athlete.edad=params[:athlete][:edad]
    @athlete.nivel_escuela=params[:athlete][:nivel_escuela]
    @athlete.nivel_libre=params[:athlete][:nivel_libre]
    @athlete.nivel_danza=params[:athlete][:nivel_danza]
    @athlete.escuela=params[:athlete][:escuela]
    @athlete.estado=params[:athlete][:estado]


    if @athlete.save
      redirect_to  athlete_index_path
    else
      render "new"
    end
  end

  def update
    id=params[:athlete][:id]
    @athlete=Athlete.find(id)
    @athlete.apellido=params[:athlete][:apellido]
    @athlete.nombre=params[:athlete][:nombre]
    @athlete.doc=params[:athlete][:doc]
    @athlete.fecha_nac=params[:athlete][:fecha_nac]
    @athlete.edad=params[:athlete][:edad]
    @athlete.nivel_escuela=params[:athlete][:nivel_escuela]
    @athlete.nivel_libre=params[:athlete][:nivel_libre]
    @athlete.nivel_danza=params[:athlete][:nivel_danza]
    @athlete.escuela=params[:athlete][:escuela]
    @athlete.estado=params[:athlete][:estado]

    if @athlete.save
      redirect_to  athlete_index_path
    else
      render "edit"
    end
  end

  def edit
    id=params[:id]
    @athlete=Athlete.find(id)
  end

  def destroy
    id=params[:id]
    athlete=Athlete.find(id)
    athlete.destroy
    redirect_to  athlete_index_path
  end


  def show
        @athlete = Athlete.find(params[:id])
  end
end
