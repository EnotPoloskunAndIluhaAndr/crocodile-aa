package crocodile

class Game {

    String name
    Integer maxUsers
    String password
    Date createDate = new Date()
    Date finishDate
    User leader
    Word word
    byte[] image
    List messages
    static hasMany = [users: User, messages: Message]

    static constraints = {
        name(nullable: true, blank: true)
        leader(nullable: false)
        maxUsers(nullable: true, minSize: 1..20)
        password(nullable: true, blank:true, size:4..8)
        image(nullable: true)
        word(nullable: false)
        users(nullable: true, blank: true)
        messages(nullable: true, blank: true)
        finishDate(nullable: true)
    }

}
