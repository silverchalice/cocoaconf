package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException

class EpisodeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [episodeInstanceList: Episode.list(params), episodeInstanceTotal: Episode.count()]
    }

    def create() {
        [episodeInstance: new Episode(params)]
    }

    def save() {
        def episodeInstance = new Episode(params)
        if (!episodeInstance.save(flush: true)) {
            render(view: "create", model: [episodeInstance: episodeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'episode.label', default: 'Episode'), episodeInstance.id])
        redirect(action: "show", id: episodeInstance.id)
    }

    def show(Long id) {
        def episodeInstance = Episode.get(id)
        if (!episodeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'episode.label', default: 'Episode'), id])
            redirect(action: "list")
            return
        }

        [episodeInstance: episodeInstance]
    }

    def edit(Long id) {
        def episodeInstance = Episode.get(id)
        if (!episodeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'episode.label', default: 'Episode'), id])
            redirect(action: "list")
            return
        }

        [episodeInstance: episodeInstance]
    }

    def update(Long id, Long version) {
        def episodeInstance = Episode.get(id)
        if (!episodeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'episode.label', default: 'Episode'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (episodeInstance.version > version) {
                episodeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'episode.label', default: 'Episode')] as Object[],
                          "Another user has updated this Episode while you were editing")
                render(view: "edit", model: [episodeInstance: episodeInstance])
                return
            }
        }

        episodeInstance.properties = params

        if (!episodeInstance.save(flush: true)) {
            render(view: "edit", model: [episodeInstance: episodeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'episode.label', default: 'Episode'), episodeInstance.id])
        redirect(action: "show", id: episodeInstance.id)
    }

    def delete(Long id) {
        def episodeInstance = Episode.get(id)
        if (!episodeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'episode.label', default: 'Episode'), id])
            redirect(action: "list")
            return
        }

        try {
            episodeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'episode.label', default: 'Episode'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'episode.label', default: 'Episode'), id])
            redirect(action: "show", id: id)
        }
    }
}
