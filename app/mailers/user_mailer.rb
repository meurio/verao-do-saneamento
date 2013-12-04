class UserMailer < ActionMailer::Base
  default from: "Meu Rio <contato@meurio.org.br>"

  def welcome user
    mail(to: user.email, subject: "Verão do Saneamento")
  end
end
