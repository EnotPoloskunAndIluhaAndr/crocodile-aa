package crocodile

class Message{

    String message
    Date createDate = new Date()

    static belongsTo = [game: Game]

    static constraints = {
        message(blank: false)
    }

    static mapping = {
    }

}
