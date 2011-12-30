package crocodile

class Profile {

    String fullName
    String homepage
    String language
    String skin = "main"
    Date createDate = new Date()
    byte[] avatar

    static  belongsTo = [User]

    static hasMany = [victoryWords:Word]

    static constraints = {
        fullName(nullable: true, size:1..20)
        avatar(nullable: true)
        victoryWords(nullable: true, blank: true)
        homepage(nullable: true, url:true)
        skin(nullable: false, blank: false)
        createDate(nullable: false)
        language(nullable:true, blank: false)
    }

    static  mapping = {
    }

    String toString(){
        "$fullName"
    }
}
