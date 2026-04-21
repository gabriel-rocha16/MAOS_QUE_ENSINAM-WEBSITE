class ApplicationController < ActionController::Base
  before_action :authenticate_usuario!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def verificar_admin!
    redirect_to root_path, alert: "Acesso negado. Apenas administradores." unless current_usuario&.gestor.present?
  end

  def verificar_instrutor_ou_admin!
    redirect_to root_path, alert: "Acesso negado." unless current_usuario&.gestor.present? || current_usuario&.instrutor.present?
  end

  def after_sign_up_path_for(resource)
    new_candidato_path
  end
  # Redireciona após o login normal (caso já tenha conta)
  def after_sign_in_path_for(resource)
    if resource.gestor.present?
      admin_dashboard_path
    elsif resource.candidato.present?
      aluno_dashboard_path
    else
      root_path
    end
  end

  protected

  def configure_permitted_parameters
    # Permite nome e cpf no cadastro (sign_up)
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :nome, :cpf ])

    # Permite nome e cpf na edição de conta (account_update)
    devise_parameter_sanitizer.permit(:account_update, keys: [ :nome, :cpf ])

    # Permite que o campo híbrido :login seja usado no login (sign_in)
    devise_parameter_sanitizer.permit(:sign_in, keys: [ :login ])
  end
end
