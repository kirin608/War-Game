 class PlayingCard
    RANKS = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    SUITS = ["spades", "diamonds", "hearts", "clubs"]

    def initialize(rank, suit)
      @rank = rank if RANKS.include?(rank)
      @suit = suit if SUITS.include?(suit)
    end

    def rank
        @rank
    end

    def suit
        @suit
    end

    def ==(other)
        @suit == other.suit && @rank == other.rank
    end
 end
