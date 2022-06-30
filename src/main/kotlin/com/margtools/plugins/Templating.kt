package com.margtools.plugins

import freemarker.cache.*
import freemarker.core.HTMLOutputFormat
import io.ktor.server.freemarker.*
import io.ktor.server.application.*
import io.ktor.server.response.*
import io.ktor.server.request.*
import io.ktor.server.routing.*

fun Application.configureTemplating() {
    install(FreeMarker) {
        templateLoader = ClassTemplateLoader(this::class.java.classLoader, "templates")
        outputFormat = HTMLOutputFormat.INSTANCE
    }
}

data class IndexData(val items: List<Int>)
