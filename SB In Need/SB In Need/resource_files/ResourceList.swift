//
//  resourceList.swift
//  SB In Need
//
//  Created by Aaron Peyton on 4/8/17.
//  Copyright © 2017 Aaron Peyton. All rights reserved.
//

import Foundation
import MapKit

class ResourceList {
    var resourceList = [Resource]
    
    init() {

        
        // overnight places
        createResource(name: "Bridge House Emergency Shelter", type: .overNight, contact: "Phone: 805-735-4390", hours: nil, address: "2025 Sweeney Road, Lompoc, 93436", coordinate: CLLocationCoordinate2D(latitude: 34.645353, longitude: -120.427736), description: "Emergency shelter. Referrals for financial, medical, and other services.\n56 beds, emergency food,\nmanaged by Good Samaritan Shelter", image: UIImage(named: "Bridge House Emergency Shelter.png")!)
        
        createResource(name: "Casa Esperanza Homeless Center", type: .overNight, contact: "Phone: 805-884-8481", hours: nil, address: "816 Cacique St, SB, 93103", coordinate: CLLocationCoordinate2D(latitude: 34.418844, longitude: -119.676538), description: "Sobriety-based transitional shelter program. Must be clean and sober.", image: UIImage(named: "Casa Esperanza Homeless Center.png")!)
        
        createResource(name: "New Beginnings Safe Parking Program", type: .overNight, contact: "Phone: 805-845-8492", hours: nil, address: "324 E Carrillo St, C, SB, 93101", coordinate: CLLocationCoordinate2D(latitude: 34.425133, longitude: -119.697569), description: "Safe place to park your vehicle and sleep overnight legally.\nMust have current license, registration & insurance.", image: UIImage(named:"New Beginnings Safe Parking Program.png")!)
        
        createResource(name: "Noah’s Anchorage Youth Crisis Shelter", type: .overNight, contact: "Phone: 805-963-8775, 805-963-7777, 805- 637-6242", hours: nil, address: "301 W. Figueroa St, SB, 93101", coordinate: CLLocationCoordinate2D(latitude: 34.418998, longitude: -119.706526), description: "Temporary shelter for youths, ages 10-17", image: UIImage(named: "Noah’s Anchorage Youth Crisis Shelter.png")!)
        
        createResource(name: "Santa Barbara Rescue Mission", type: .overNight, contact: "Phone: 805-966-1316", hours: "Check in:\nWomen : Mon-Sat 4pm. Sun 3pm. Men: Mon-Sat: 6:15pm. Sun: 5:15pm", address: "535 E Yanonali St, SB, 93103", coordinate: CLLocationCoordinate2D(latitude: 34.419117, longitude: -119.684520), description: "Overnight stay and Showers\nBreakfast & Dinner\nChapel 7pm (optional)\nNote: showers, dinner and breakfast available even if not staying overnight", image: UIImage(named: "Santa Barbara Rescue Mission.pg")!)
        
        createResource(name: "Transition House Family Shelter", type: .overNight, contact: "Phone: 805-966-9668", hours: "Call M-F 9am-5pm", address: "425 E Cota St, SB, 93101", coordinate: CLLocationCoordinate2D(latitude: 34.423025, longitude: -119.691537), description: "Emergency shelter and homelessness prevention for families.\nShelter admittance based on bed availability", image: UIImage(named: "Transition House Family Shelter.png")!)
        
        // food places
        createResource(name: "Pershing Park", type: .food, contact: "No contact info", hours: "Breakfast: Sunday at 9am\n DinnerWednesday at pm", address: "100 Castillo St, SB, 93101", coordinate: CLLocationCoordinate2D(latitude: 34.408857, longitude: -119.694914), description: "Occaisional free food", image: UIImage(named: "Pershing Park.png")!)
        
        createResource(name: "The Salvation Army Hospitality House", type: .food, contact: "Phone: 805-962-6281 x 108", hours: "Sun-Sat from 7-9am", address: "423 Chapala St, SB, 93101", coordinate: CLLocationCoordinate2D(latitude: 34.415262, longitude: -119.696449), description: "Burritos served until out", image: UIImage(named: "The Salvation Army Hospitality House.png")!)
        
        createResource(name: "Santa Barbara Rescue Mission", type: .food, contact: "Phone: 805-966-1316", hours: "Daily at 5:45 Army", address: "535 E Yanonali St, SB, 93103", coordinate: CLLocationCoordinate2D(latitude: 34.419117, longitude: -119.684520), description: "Breakfast", image: UIImage(named: "Santa Barbara Rescue Mission.pg")!)
        
        createResource(name: "Fellowship Club (Mental Wellness Center)", type: .food, contact: "Phone: 805-884-8440", hours: "Mon-Fri from 12-12:30PM", address: "617 Garden St, SB, 93101", coordinate: CLLocationCoordinate2D(latitude: 34.421292, longitude: -119.694262), description: "Lunch for Members only/mental health referral signed by doctor needed", image: UIImage(named: "Fellowship Club (Mental Wellness Center).png")!)
        
        createResource(name: "St. Mark’s/Community Kitchen Isla Vista", type: .food, contact: "Phone: 805-968-3965", hours: "Mon-Fri at 12:30 pm", address: "6550 Picasso Rd., IV, CA 93117", coordinate: CLLocationCoordinate2D(latitude: 34.415359, longitude: -119.856618), description: "Lunch", image: UIImage(named: "St. Mark’s/Community Kitchen Isla Vista.png")!)
        
        createResource(name: "St. Brigid Fellowship Goleta", type: .food, contact: "Phone: 805-968-8028", hours: "Monday nights from 5-6pm", address: "6586 Picasso Road Isla Vista, 93117", coordinate: CLLocationCoordinate2D(latitude: 34.415332, longitude: -119.858087), description: "Dinner on Mon nights at St. Michaels Episcopal Church", image: UIImage(named: "St. Brigid Fellowship Goleta.png")!)
        
//        createResource(name: "Light and Life Goleta", type: .food, contact: "e-mail: llgoleta@gmail.com", hours: "Sun at 12:15 pm", address: <#T##String#>, coordinate: CLLocationCoordinate2D(latitude: , longitude: ), description: <#T##String#>, image: UIImage(named: <#T##String#>)!)
        
        // empty resource thing
        //createResource(name: <#T##String#>, type: <#T##ResourceType#>, contact: <#T##String#>, hours: <#T##String?#>, address: <#T##String#>, coordinate: CLLocationCoordinate2D(latitude: , longitude: ), description: <#T##String#>, image: UIImage(named: <#T##String#>)!)
    }
    
    
    func createResource(name: String, type: ResourceType, contact: String, hours: String?, address: String, coordinate: CLLocationCoordinate2D, description: String, image: UIImage){
        ResourceList.resourceList.append(Resource(named: name, ofType: type, withContactInfo: contact, withHours: hours, atAddress: address, atCoordinate: coordinate, withDescription: description, withImage: image))
        print( description)
    }
    
    
}
