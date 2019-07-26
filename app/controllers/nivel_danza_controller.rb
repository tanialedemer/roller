class NivelDanzaController < ApplicationController
  def index
    @nivel_danzas= NivelDanza.all()
  end

  def show
    @nivel_danza = NivelDanza.find(params[:id])
  end

  def new
    @nivel_danza = NivelDanza.new
  end

  def create
    @nivel_danza=NivelDanza.new
    @nivel_danza.description=params[:nivel_danza][:description]

    if @nivel_danza.save
      redirect_to  nivel_danza_index_path
    else
      render "new"
    end
  end

  def edit
    id=params[:id]
    @nivel_danza=NivelDanza.find(id)
  end

  def update
    id=params[:nivel_danza][:id]
    @nivel_danza=NivelDanza.find(id)
    @nivel_danza.description=params[:nivel_danza][:description]

    if @nivel_danza.save
      redirect_to  nivel_danza_index_path
    else
      render "edit"
    end
  end

  def destroy
    id=params[:id]
    nivel_danza=NivelDanza.find(id)
    nivel_danza.destroy
    redirect_to  nivel_danza_index_path
  end
end
