class CasSessionController < ActionController::Base

  def destroy
    CASClient::Frameworks::Rails::Filter.logout self
  end

end
