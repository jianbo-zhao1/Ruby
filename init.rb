#randomly draw one card from cards to cardDeck
def drawCard(cards, cardDeck)
    size = (cards.length-1)
    index = rand(0..size)
    cardDeck.push(cards.pop[index])
end

#Display time remaining in sec
#timeLeft would be negative if exceeds totalTimeAllowed
def timer(timeStart, totalTimeAllowed)
    #to calculate time-elapsed
    timeElapsed = Time.now - timeStart
    #timeLeft = totalTimeAllowed (in secs) - timeElapsed
    timeLeft = totalTimeAllowed - timeElapsed
    puts "%.0f secs remaining" % timeLeft
end


#record the current time
timeStart = Time.now


#init score to 0
score = 0

#init an array cards that contains 81 cards
cards = []

#define square cards
 emptySquare = "\u25A1"
 partSquare = "\u25A3"
 filledSquare = "\u25A0"

#define diamond cards
 emptyDiamond = "\u25C7"
 partDiamond = "\u25C8"
 filledDiamond = "\u25C6"

#define circle cards
 emptyCircle = "\u25C8"
 partCircle = "\u25C9"
 filledCircle = "\u25CF"

for i in 1..3 do
    for j in 1..3 do
        if j == 1
            cards.push ((emptyCircle + ".green ")*i)
            cards.push ((partCircle + ".green ")*i)
            cards.push ((filledCircle + ".green ")*i)
            cards.push ((emptySquare + ".green ")*i)
            cards.push ((partSquare + ".green ")*i)
            cards.push ((filledSquare + ".green ")*i)
            cards.push ((emptyDiamond + ".green ")*i)
            cards.push ((partDiamond + ".green ")*i)
            cards.push ((filledDiamond + ".green ")*i)
        elsif j == 2
            cards.push ((emptyCircle + ".blue ")*i)
            cards.push ((partCircle + ".blue ")*i)
            cards.push ((filledCircle + ".blue ")*i)
            cards.push ((emptySquare + ".blue ")*i)
            cards.push ((partSquare + ".blue ")*i)
            cards.push ((filledSquare + ".blue ")*i)
            cards.push ((emptyDiamond + ".blue ")*i)
            cards.push ((partDiamond + ".blue ")*i)
            cards.push ((filledDiamond + ".blue ")*i)
        else
            cards.push ((emptyCircle + ".pink ")*i)
            cards.push ((partCircle + ".pink ")*i)
            cards.push ((filledCircle + ".pink ")*i)
            cards.push ((emptySquare + ".pink ")*i)
            cards.push ((partSquare + ".pink ")*i)
            cards.push ((filledSquare + ".pink ")*i)
            cards.push ((emptyDiamond + ".pink ")*i)
            cards.push ((partDiamond + ".pink ")*i)
            cards.push ((filledDiamond + ".pink ")*i)
        end
    end
end

#randomly select 12 cards from array cards
cardDeck = []
for i in 0..11 do
    drawCard(cards, cardDeck)
end




