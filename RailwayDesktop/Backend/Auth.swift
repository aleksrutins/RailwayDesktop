//
//  Auth.swift
//  RailwayDesktop
//
//  Created by Student on 4/13/22.
//

import Foundation

struct Auth {
    static func browserBasedLogin() {
        var token: String
        var returnedCode: String
        let port = Randomizer.port()
        let code = Randomizer.code()
        
    }
    struct GetMeResponse {
        struct Me {
            var id: String
            var email: String
            var name: String
            var avatar: String
            var isAdmin: Bool
            var createdAt: String
            var plan: String
            var flags: [String]
            var agreedFairUse: Bool
            var termsAgreedOn: String
            var riskLevel: Int
            struct Customer {
                var state: String
            }
            var customer: Customer
            struct Project {
                var id: String
                var name: String
                var deletedAt: String?
                var isMetrofied: Bool
            }
            struct ProviderAuth {
                var id: String
                var provider: String
                var metadata: Any
            }
            var providerAuths: [ProviderAuth]
            var banReason: String?
            struct Team {
                var id: String
                var name: String
                var avatar: String
                var createdAt: String
                var customer: Customer
                struct TeamPermissions {
                    var id: String
                    var userId: String
                    var role: String
                }
                var teamPermissions: TeamPermissions
                var projects: [Project]
            }
            var teams: [Team]
        }
        var me: Me
    }
    static func getMe() {
        let querygql = """
          query getMe {
            me {
              ...UserFields
            }
          }

          fragment UserFields on User {
            id
            email
            name
            avatar
            isAdmin
            createdAt
            plan
            flags
            agreedFairUse
            termsAgreedOn
            riskLevel
            customer {
              state
            }
            projects(orderBy: {updatedAt: desc}) {
              id
              name
              deletedAt
              isMetrofied
            }
            providerAuths {
              id
              provider
              metadata
            }
            banReason
            teams {
              ...TeamFields
            }
          }

          fragment TeamFields on Team {
            id
            name
            avatar
            createdAt
            customer {
              state
            }
            teamPermissions {
              id
              userId
              role
            }
            projects {
              id
              name
              deletedAt
              isMetrofied
            }
          }
        """
        
    }
}
