package crocodile

class Word {

    Map translators
    static hasMany = [translators: String, users: User]

    static belongsTo = [User]

    static constraints = {
        translators()
        users()
    }

    String toString(){
         translators.collect{"${it.key}: ${it.value}"}.join(', ')
    }
}
