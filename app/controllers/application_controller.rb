class ApplicationController < ActionController::API
  rescue_from Exception,                        with: :render_500
  rescue_from ActiveRecord::RecordNotFound,     with: :render_404
  rescue_from ActionController::RoutingError,   with: :render_404 # うまくハンドリングできていない

  def render_404(e = nil)
    render json: { code: 'E0404', message: e.message }, status: :not_found
  end

  def render_500(e = nil)
    render json: { code: 'E9999', message: e.message  }, status: :internal_server_error
  end
end
