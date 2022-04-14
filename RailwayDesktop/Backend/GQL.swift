//
//  GQL.swift
//  RailwayDesktop
//
//  Created by Student on 4/13/22.
//

import Foundation

struct GQL {
    struct Query {
        var queryName: String
        var queryContent: String
    }
    private struct QueryJSON {
        var query: String
    }
    static func request<T>(query: Query) -> T? {
        let urlStr = "https://backboard.railway.app/graphql?q=" + query.queryName
        let body = try? JSONSerialization.data(withJSONObject: QueryJSON(query: query.queryContent))
        let url = URL(string: urlStr)!
        let session = URLSession.shared
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/graphql", forHTTPHeaderField: "Content-Type")
        return nil
    }
}

