package crocodile

class ErrorController {

    def index = {
        redirect(action: "notFound", params: params)
    }

    def forbidden={
        render(view: "error")
    }

    def notFound ={
        render(view: "error")
    }

    def internal ={
        render(view: "error")
    }
}
