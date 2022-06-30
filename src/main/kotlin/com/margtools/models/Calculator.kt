package com.margtools.models

import java.util.concurrent.atomic.AtomicInteger

class Calculator
private constructor(val id: Int, var title: String, var body: String) {
    companion object {
        private val idCounter = AtomicInteger()

        fun newEntry(title: String, body: String) = Calculator(idCounter.getAndIncrement(), title, body)
    }
}

val calculators = mutableListOf(Calculator.newEntry(
    "Item calculator",
    "Lets calc"
))