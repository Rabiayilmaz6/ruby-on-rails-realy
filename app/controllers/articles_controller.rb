class ArticlesController < ApplicationController  #ApplicationControllerdan miras aldı
    before_action :set_article, only: %i[show edit update destroy] # set article metodu içerideki eylemler çalıştırılmadan önce çağırılır
  # before_action metodu

    def index # tüm makaleleri listelemek için bu metod tanımlanmıştır
      @articles = Article.all # veritabanındaki tüm article alır @article değişkeni sonra htmlede kullanılmıltır
    end
  
    def show # detayları görmek için tanımlandır içi boştur çünkü before_action ile tanımlanmıştır
    end
  
    def new
      @article = Article.new
    end
  
    def edit
    end
  
    def create
      @article = Article.new(article_params) # yeni makale oluşturmak için kullanılır
  
      if @article.save
        redirect_to @article, notice: 'Article was successfully created.' # makale yaratılma işlemi başarılıysa sayfaya mesaj gönderilir
      else
        render :new # oluşturma başarılı değilse sayfadan ayrılmaz ve new tekrar gösterşilr
      end
    end
  
    def update
      if @article.update(article_params) # article ın güncellenip güncellenmediğini kontrol eder
        redirect_to articles_url, notice: 'Article was successfully updated.' # güncelleme başarılıysa article sayfasına yönlendirilir
      else
        render :edit # doğru olmadığında edit sayfasından çıkmaz ve kullanıcı bunları düzeltebilir
      end
    end
  
    def destroy # silme işlemi 
      @article.destroy # 
      redirect_to articles_url, notice: 'Article was successfully destroyed.' # silme işlemi bittiğinde articles e döner   
    end

    private
    def set_article 
      @article = Article.find(params[:id]) # belirtilen id e ait articles ı articless içine atar
    end
  
    def article_params # birden çok satır olduğunda neye göre filtreleyeceğini belirten fonksiyon

      params.require(:article).permit(:title, :content, :status)
    end
  end
  