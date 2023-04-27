//
//  AlbumData.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

/*
 Here is were we actually populate our data, using the Model previously created to actually feed our Database.
 In this case I put information about 10 Dog Breeds.
 
 If you'd like to see why I acces the images this way, you can check the Image file in the Extensions folder.
 
 Now that we have our Data, let's start with our screens, Let's go to the HomeView File in the View Folder.
 */

import Foundation
import SwiftUI

struct AlbumData {
    let rottweiler: Puppy = Puppy(
        id: 0,
        image: Image.puppy.rottweiler,
        breed: "Rottweiler",
        coat: "Black, Mahogany or Tan",
        weight: "40 to 60kg",
        height: "55 to 70cm",
        origin: "germany",
        personality: "Rottweilers are powerful, intelligent dogs that are known for their loyalty and protectiveness. These muscular pups have a natural instinct to guard their families, and are always ready to step up and defend their loved ones. But they're also incredibly affectionate and thrive on human companionship.")
    
    let dachshund: Puppy = Puppy(
        id: 1,
        image: Image.puppy.dachshund,
        breed: "Dachshund",
        coat: "Black, Cream or Chocolate",
        weight: "3 to 9kg",
        height: "20 to 23cm",
        origin: "germany",
        personality: "Dachshunds, or wiener dogs, are cute and quirky little pups that are instantly recognizable by their long, sausage-like bodies. But don't let their unusual shape fool you - Dachshunds are also incredibly smart and fearless, with a spunky attitude that belies their small size. They make great watchdogs and loyal companions.")
    
    let frenchBulldog: Puppy = Puppy(
        id: 2,
        image: Image.puppy.frenchBulldog,
        breed: "French Bulldog",
        coat: "White, Brindle or Fawn",
        weight: "8 to 14kg",
        height: "24 to 35cm",
        origin: "france",
        personality: "French Bulldogs are compact, muscular dogs that are known for their adorable bat ears and playful nature. They're also incredibly affectionate and love nothing more than cuddling up with their owners.")
    
    let husky: Puppy = Puppy(
        id: 3,
        image: Image.puppy.husky,
        breed: "Siberian Husky",
        coat: "Black & White, Red and Gray",
        weight: "16 a 27kg",
        height: "51 a 60cm",
        origin: "russia",
        personality: "Siberian Huskies are beautiful, athletic dogs that love to run and play. These energetic pups are known for their striking looks, with their piercing blue eyes and thick, fluffy coats. They're also incredibly intelligent and independent, with a strong desire to explore and experience new things.")
    
    let samoyed: Puppy = Puppy(
        id: 4,
        image: Image.puppy.samoyed,
        breed: "Samoyed",
        coat: "White and Cream",
        weight: "16 a 30kg",
        height: "48 a 60cm",
        origin: "russia",
        personality: "Samoyeds are fluffy, friendly, and full of personality. These beautiful dogs are known for their thick, white coats, which make them look like big balls of fluff. Samoyeds are great with kids and other pets, making them the perfect addition to any household.")
    
    let goldenRetriever: Puppy = Puppy(
        id: 5,
        image: Image.puppy.goldenRetriever,
        breed: "Golden Retriever",
        coat: "Gold (Clear and Dark) and Cream",
        weight: "25 a 34kg",
        height: "51 a 61cm",
        origin: "unitedKingdom",
        personality: "Golden Retrievers are the quintessential family dog, known for their friendly and loyal personalities. These pups are incredibly social and love spending time with their human families, whether it's going for a walk, playing fetch in the yard, or just snuggling on the couch.")
    
    let australianShepperd: Puppy = Puppy(
        id: 6,
        image: Image.puppy.australianShepperd,
        breed: "Australian Shepherd",
        coat: "Merle, Black, Red & Merle",
        weight: "16 a 32kg",
        height: "46 a 58cm",
        origin: "usa",
        personality: "With their boundless energy and love for the outdoors, Australian Shepherds are the ultimate adventure buddies. They are known for their agility and intelligence, making them great at activities like hiking and running. They're also incredibly loyal and affectionate, forming strong bonds with their owners that last a lifetime.")
    
    let yorkshire: Puppy = Puppy(
        id: 7,
        image: Image.puppy.yorkshire,
        breed: "Yorkshire",
        coat: "Golden, Black & Tan and Brindle",
        weight: "2 a 5kg",
        height: "18 a 27cm",
        origin: "england",
        personality: "Yorkies are little dogs with big personalities, known for their spunky attitudes and fierce loyalty. They make great companions for anyone who loves a dog that's equal parts sassy and cuddly!")
    
    let boxer: Puppy = Puppy(
        id: 8,
        image: Image.puppy.boxer,
        breed: "Boxer",
        coat: "Brindle, Fawn & White and Black Mask",
        weight: "25 a 32kg",
        height: "53 a 63cm",
        origin: "germany",
        personality: "Boxers are the life of the party in the dog world. With their goofy grins, they're always ready for fun and games. Whether you're looking for a playful companion or a loyal friend, a Boxer will keep you safe and sound with their brave nature and lovable quirks.")
    
    let shitzu: Puppy = Puppy(
        id: 9,
        image: Image.puppy.shitzu,
        breed: "Shih Tzu",
        coat: "Red, Gold & White and Black",
        weight: "4 a 8kg",
        height: "25 a 27cm",
        origin: "china",
        personality: "Shih Tzus are friendly and outgoing little dogs that make wonderful companions. They are known for their intelligence and quick learning abilities. These pups are kind and gentle by nature, making them the perfect snuggle buddies for cozy nights at home.")
}
