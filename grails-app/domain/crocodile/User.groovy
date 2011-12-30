package crocodile

class User {


    String name
    String password
    String email
    String userRealName
    boolean emailShow = false
    boolean enabled
    Profile profile

    static  constraints = {
        name(blank: false, nullable: false)
        password(size: 4..8, validator: {password, user->
            return password != user.name
        })
        email(nullable: true, email: true, blank: true)
        userRealName(nullable: true, blank: true)
        profile(nullable: false)
    }

    static mapping = {
    }

    static belongsTo = [Game]

    String toString(){
        "User $name"
    }
}
