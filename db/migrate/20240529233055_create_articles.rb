class CreateArticles < ActiveRecord::Migration[7.1]  #eritabanı değişikliklerini yönetmek için 
  def change # migration nasıl uygulanacağını belirtmek için tanımlanmıştır
    create_table :articles do |t| # article adında yeni bir tablo oluşturulur |t| ise tabloya sutun eklemek için kullanılır
      t.string :title, null: false # boş bırakılamaz durumda ayarlanmıştır
      t.text :content, default: "content will be here"
      t.integer :status, default: 0, null: false # tabloya status sutunu eklendi

      t.timestamps # kaydın ne zaman oluşturulup güncellendiğini tutmak için kullanıldı
    end
  end
end