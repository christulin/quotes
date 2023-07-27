class QController < R00lz::Controller
  def a_quote
    "There is nothing either good or bad " +
      "but thinking makes it so."
  end

  def shakes
    @noun = :winking
    render(:shakes)
  end

  def card_trick
    n = params["card"] || "Queen"
    "Your card: the #{n} of spades!"
  end

  def fq
    @q = FileModel.find(params["q"] || "1")
    render :quote
  end
end