//
//  Configuration.swift
//  Portfolio
//
//  Created by agmcoder on 29/1/23.
//

import Foundation

import Foundation

struct Configuration {
    // Método estático para obtener la URL para un nombre específico
    static func getValueFromConfigurationFile(for name: String, parameter: String) -> String {
        // Intentamos obtener la URL del archivo JSON
        guard let file = Bundle.main.url(forResource: "Configuration", withExtension: "json") else { return "" }
        do {
            // Leemos los datos del archivo JSON
            let data = try Data(contentsOf: file)
            // Convertimos los datos en un objeto JSON
            let json = try JSONSerialization.jsonObject(with: data, options: [])
            // Verificamos si el objeto JSON es un diccionario con una clave "links"
            if let json = json as? [String: Any], let links = json["links"] as? [[String: Any]] {
                // Iteramos sobre cada enlace en el arreglo "links"
                for link in links {
                    // Verificamos si el enlace actual tiene un nombre y una URL y si el nombre coincide con el nombre proporcionado
                    if let linkName = link["name"] as? String, let linkUrl = link[parameter] as? String, linkName == name {
                        // Si el nombre coincide, devolvemos la URL
                        return linkUrl
                    }
                }
            }
        } catch {
            // Si ocurre un error, devolvemos una cadena vacía
            return ""
        }
        // Si no se encuentra un enlace con el nombre proporcionado, devolvemos una cadena vacía
        return ""
    }
}


