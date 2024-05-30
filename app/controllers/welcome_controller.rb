class WelcomeController < ApplicationController
  def index
    if Article.exists? # herhangi bir kayıt olup olmadığını kontrol eder
      redirect_to articles_path
    end
  end
end
