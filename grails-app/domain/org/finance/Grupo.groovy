package org.finance

/**
 * Grupo
 * A domain class describes the data object and it's mapping to the database
 */
class Grupo {

    String grupo
    static belongsTo = [purok: Purok]

    static mapping = {
    }

    static constraints = {
    }

}
