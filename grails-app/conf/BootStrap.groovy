import crocodile.User
import crocodile.Profile
import crocodile.Word
import crocodile.Game

class BootStrap {

    def init = { servletContext ->
        def user1 = new User(name: "Enot",password: "pass");
        def profile1 = new Profile(email: "enot@gmail.com", fullName: "Enot Enotovich")
        user1.profile = profile1;
        user1.save()

        def user2 = new User(name: "Poloskun",password: "pass32");
        def profile2 = new Profile(email: "poloskun@gmail.com", fullName: "Poloskun")
        user2.profile = profile2;
        user2.save()

        def user3 = new User(name: "Poloskun1212",password: "pass12");
        def profile3 = new Profile(email: "poloskun123@gmail.com", fullName: "Polosk")
        user3.profile = profile3;
        user3.save()

        def word1 = new Word(translators: [en:"game", ru:"игра"]);
        word1.save()

        def word2 = new Word(translators: [en:"life", ru:"жизнь"]);
        word2.save()

        def game1 = new Game(name: "description", leader: user1, maxUsers: 10, word: word1)
        game1.addToUsers(user1)
        game1.save()

        def game2 = new Game(name: "description is rferere ergg erg erg erg", leader: user2, maxUsers: 5, word: word2)
        game2.addToUsers(user2)
        game2.save()
    }
    def destroy = {
    }
}
