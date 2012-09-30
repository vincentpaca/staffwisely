module AppHelper
  def current_company
    current_user.company
  end
end
