package com.margtools.plugins

import com.margtools.models.*
import io.ktor.server.routing.*
import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.freemarker.*
import io.ktor.server.http.content.*
import io.ktor.server.response.*
import io.ktor.server.request.*
import io.ktor.server.util.*

fun Application.configureRouting() {
    routing {
        static("/static") {
            resources("images")
        }
        get("/") {
            call.respondRedirect("item-calculator")
        }

        route("item-calculator") {
            get {
                call.respond(FreeMarkerContent("index.ftl", mapOf("articles" to calculators)))
            }
            get("new") {
                call.respond(FreeMarkerContent("new.ftl", model = null))
            }
            post {
                val formParameters = call.receiveParameters()
                val title = formParameters.getOrFail("title")
                val body = formParameters.getOrFail("body")
                val newEntry = Calculator.newEntry(title, body)
                calculators.add(newEntry)
                call.respondRedirect("/articles/${newEntry.id}")
            }
            get("{id}") {
                val id = call.parameters.getOrFail<Int>("id").toInt()
                call.respond(FreeMarkerContent("show.ftl", mapOf("article" to calculators.find { it.id == id })))
            }
            get("{id}/edit") {
                val id = call.parameters.getOrFail<Int>("id").toInt()
                call.respond(FreeMarkerContent("edit.ftl", mapOf("article" to calculators.find { it.id == id })))
            }
            post("{id}") {
                val id = call.parameters.getOrFail<Int>("id").toInt()
                val formParameters = call.receiveParameters()
                when (formParameters.getOrFail("_action")) {
                    "update" -> {
                        val index = calculators.indexOf(calculators.find { it.id == id })
                        val title = formParameters.getOrFail("title")
                        val body = formParameters.getOrFail("body")
                        calculators[index].title = title
                        calculators[index].body = body
                        call.respondRedirect("/articles/$id")
                    }
                    "delete" -> {
                        calculators.removeIf { it.id == id }
                        call.respondRedirect("/articles")
                    }
                }
            }
        }
    }
}
