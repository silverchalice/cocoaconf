package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException

class FeedEntryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [feedEntryInstanceList: FeedEntry.list(params), feedEntryInstanceTotal: FeedEntry.count()]
    }

    def create() {
        [feedEntryInstance: new FeedEntry(params)]
    }

    def save() {
        def feedEntryInstance = new FeedEntry(params)
        if (!feedEntryInstance.save(flush: true)) {
            render(view: "create", model: [feedEntryInstance: feedEntryInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'feedEntry.label', default: 'FeedEntry'), feedEntryInstance.id])
        redirect(action: "show", id: feedEntryInstance.id)
    }

    def show() {
        def feedEntryInstance = FeedEntry.get(params.id)
        if (!feedEntryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'feedEntry.label', default: 'FeedEntry'), params.id])
            redirect(action: "list")
            return
        }

        [feedEntryInstance: feedEntryInstance]
    }

    def edit() {
        def feedEntryInstance = FeedEntry.get(params.id)
        if (!feedEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'feedEntry.label', default: 'FeedEntry'), params.id])
            redirect(action: "list")
            return
        }

        [feedEntryInstance: feedEntryInstance]
    }

    def update() {
        def feedEntryInstance = FeedEntry.get(params.id)
        if (!feedEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'feedEntry.label', default: 'FeedEntry'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (feedEntryInstance.version > version) {
                feedEntryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'feedEntry.label', default: 'FeedEntry')] as Object[],
                          "Another user has updated this FeedEntry while you were editing")
                render(view: "edit", model: [feedEntryInstance: feedEntryInstance])
                return
            }
        }

        feedEntryInstance.properties = params

        if (!feedEntryInstance.save(flush: true)) {
            render(view: "edit", model: [feedEntryInstance: feedEntryInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'feedEntry.label', default: 'FeedEntry'), feedEntryInstance.id])
        redirect(action: "show", id: feedEntryInstance.id)
    }

    def delete() {
        def feedEntryInstance = FeedEntry.get(params.id)
        if (!feedEntryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'feedEntry.label', default: 'FeedEntry'), params.id])
            redirect(action: "list")
            return
        }

        try {
            feedEntryInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'feedEntry.label', default: 'FeedEntry'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'feedEntry.label', default: 'FeedEntry'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
