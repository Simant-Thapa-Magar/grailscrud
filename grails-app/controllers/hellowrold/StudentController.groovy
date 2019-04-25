package hellowrold

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class StudentController {

    StudentService studentService

//    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        def studentList = Student.list()
        render(view: 'index',model: [studentList : studentList])

    }

    def show(Long id) {
        respond studentService.get(id)
    }

    def create() {
    }

    def save() {

        Student student = new Student()
        student.properties = params
        student.save(flush: true, failOnError : true)
        flash.message= "Sucessfully Saved"
        redirect(action: 'index')

    }

    def edit(Long id) {

        def student = Student.findById(id)
        [student : student]

    }

    def updateStudent() {

        def student = Student.findById(params.long('id'))
        student.properties = params
        student.save(flush: true, failOnError :true)
        flash.message="Sucessfully Updated."
        redirect(action: 'index')
    }

    def delete(Long id) {

        Student.findById(id).delete(flush: true,failOnError: true)
        flash.message= "Sucessfully Deleted."
        redirect(action: 'index')


    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
