package np.com.pantbinod

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class PersonController {


    def index(){

        def personList = Person.list();

        render(view: 'index',
                model: [personList: personList]        )
    }

    def create(){
        render(view: 'create')
    }

    def edit() {
        def persons = Person.findById(params.long('id'));
        render(view: 'edit',model: [person: persons])
    }

    def delete(){
        def person = Person.findById(params.long("id"))
        person.delete(flush: true, failOnError :true)
        redirect(action:'index')
    }
}
