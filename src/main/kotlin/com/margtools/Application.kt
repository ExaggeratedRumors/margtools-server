package com.margtools

import io.ktor.server.engine.*
import io.ktor.server.netty.*
import com.margtools.plugins.*

fun main() {
    embeddedServer(Netty, port = 8080, host = "0.0.0.0", watchPaths = listOf("classes")) {
        configureRouting()
        configureTemplating()
    }.start(wait = true)
}
