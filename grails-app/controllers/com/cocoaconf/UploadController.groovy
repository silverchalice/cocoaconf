package com.cocoaconf

class UploadController {

    def index() { }

    def image() {}

    def uploadImage() {
        def file = request.getFile('image')
        if(!file.empty){
            def webRootDir = servletContext.getRealPath("/")
            def imagesDir = new File(webRootDir, "/images")
            if(new File(imagesDir, file.originalFilename).exists()){
                flash.message = "There is already an image with the name &#8220;${file.originalFilename}.&#8221; Please use another name."
                redirect action: "image"
                return
            } else {
                file.transferTo(new File(imagesDir, file.originalFilename))
            }
            flash.message = "The file was successfully uploaded."
            session.filename = file.originalFilename
            redirect action: "image"
        } else {
            flash.message = "Please select a file to upload."
            redirect action: "image"
        }
    }

}
