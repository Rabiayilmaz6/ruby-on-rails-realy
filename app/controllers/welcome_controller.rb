class WelcomeController < ApplicationController
  def index
    if Article.exists? # herhangi bir kayıt olup olmadığını kontrol eder
      redirect_to articles_path # eğer yukarıdaki true dönerse bu satır çalışır ve article path e gider 
                                # article path articles olduğu yoldur 
    end
  end
end
