class ArticleMailer < ApplicationMailer
  def new_article(article)
    @article = article

    User.all.each do |user|
      mail(to: user.email, subject: 'New Article from my blog')
    end
  end
end
