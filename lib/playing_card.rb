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

    def card_value
        card_value_hash = {'2' => 2,'3' => 3,'4' => 4,'5' => 5,'6' => 6,'7' => 7,
            '8' => 8,'9' => 9,'10' => 10,'J' => 11,'Q' => 12,'K' => 13,'A' => 14
        }
        card_value_hash[@rank]
    end
 end
