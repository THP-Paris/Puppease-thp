class UserMailer < ApplicationMailer
    default from: 'puppease.thp@gmail.com'
 
    def welcome_email(user)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @user = user
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'http://puppease.com' 
      @user = user
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end
  

    def order_confirmation(email)
      @url = 'http://puppease.com'
      @email = email
      mail(to: @email, subject: 'Les coordoonnées du maitre')
  end
end
