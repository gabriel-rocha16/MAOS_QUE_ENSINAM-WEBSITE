class Admin::DashboardController < ApplicationController
  before_action :authenticate_usuario!
  before_action :verificar_instrutor_ou_admin!

  def index
    if current_usuario.gestor.present?
      @cursos = Curso.all.order(created_at: :desc)
    elsif current_usuario.instrutor.present?
      @cursos = current_usuario.cursos.order(created_at: :desc)
    end
  end
end
