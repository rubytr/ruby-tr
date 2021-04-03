# Katkıda Bulunma

Eğer herhangi bir hata bulduysanız veya bir geliştirme isteğiniz varsa lütfen
önce [bildirimde][1] bulununuz. Bildirimde bulunacağınız konu üzerinde halihazırda
çalışan veya çalışmış kişiler olabilir ya da topluluk içinde konuşulup karara bağlanmış ve
yapılmayacak bir talepte bulunuyor olabilirsiniz.

## Ana esaslar

* Daha önce pek fazla Git ve açık kaynak tecrübeniz yok ise okumanızı tavsiye ederiz. [Git üzerinde basit işlemler ve açık kaynak koda nasıl katkı sağlarım][2] (İngilizce kaynak).
* Projeyi forklayın.
* [RVM](https://rvm.io/rvm/install) ya da [rbenv](https://github.com/rbenv/rbenv#installation) kullanarak `ruby@2.6.6` versiyonunu bilgisayarınıza yükleyin.
* Proje dizinine gelerek `bundle install` komutunu çalıştırın ve gerekli ruby kütüphanelerini yükleyin.
* `rails db:create:all` ve `rails db:migrate RAILS_ENV=development` ve `rails db:migrate RAILS_ENV=test` komutlarını çalıştırarak veritabanlarını ve tabloları oluşturun.
* [Anlamlı commit mesajları][3] (İngilizce kaynak) yazın.
* Uygulama içerisinde takip edilmiş standartları uygulayın.
* Yaptığınız değişiklik içinize sinene kadar göndermeyin.
* Yaptığınız her değişiklik için (çok ufak bile olsa) test eklemeyi unutmayın.
* PR açmadan önce yazdığınız ve var olan testlerin geçtiğinden emin olmak için `bundle exec rspec` komutunu çalıştırın.
* Yaptığınız değişikliklerin RuboCop hatası fırlatmadığından emin olmak için `bundle exec rubocop` komutunu çalıştırın.
* Birbirleri ile alakalı commitleri [Squash ederek PR açın][4] (İngilizce kaynak).

[1]: https://github.com/rubytr/ruby-tr/issues
[2]: https://www.gun.io/blog/how-to-github-fork-branch-and-pull-request
[3]: https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
[4]: http://gitready.com/advanced/2009/02/10/squashing-commits-with-rebase.html
