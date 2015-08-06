package org.finance

/**
 * Purok
 * A domain class describes the data object and it's mapping to the database
 */
class Purok {

    String purok
	static hasMany = [grupo : Grupo]

    static	mapping = {
    }
    
	static	constraints = {
    }

}
