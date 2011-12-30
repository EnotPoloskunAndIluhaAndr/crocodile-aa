package crocodile

class MailController {

    def mailService

    def index = {
        redirect(action: "sendMail", params: params)
    }

    def mail  = {
        if(params.body){
            mailService.sendMail {
                to mailService.mailConfig.properties["username"]
                if(params.email)
                    from params.email
                if(params.email)
                    subject params.subject
                body params.body

            }
            flash.message = "Сообщение успешно отправлено и скопо будет прочитано"
            redirect(uri:"/")
        }   else{
            flash.message = "Проверьте вводимые данные"
            [params:params]
        }
    }
}