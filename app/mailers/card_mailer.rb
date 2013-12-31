class CardMailer < ActionMailer::Base
  default from: "mendicant.web@gmail.com"
  
  def bought_card(card)

    mail(to: "mendicant@gmail.com", subject: "You just bought #{card.player_type.name} #{card.name} for #{card.bin}", card: card)
  end
end
