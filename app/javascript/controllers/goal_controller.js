import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "elementToInvert" ]

    connect() {
        console.log("Goal controller connected!")
    }

    status({params}) {
        let csrfToken = document.head.querySelector('meta[name="csrf-token"]').content

        //console.log(params.url)
        
        let formData = new FormData()
        formData.append("goal[completed]", !params.completed)
        
        let that = this
        fetch(params.url, {
            body: formData,
            method: 'PATCH', 
            credentials: "include",
            headers: {
                "x-csrf-token": csrfToken
            }
        })
        .then(response => response.text())
        .then(html => that.elementToInvertTarget.outerHTML = html) 
        //that.elementToInvertTarget.classList.toggle("btn-primary") 
        //that.elementToInvertTarget.classList.toggle("btn-secondary") 
    }
}
