class DashboardsController < ApplicationController
  before_action :verificar_admin!, only: [:admin]

  def admin
  end

  def aluno
  end
end
