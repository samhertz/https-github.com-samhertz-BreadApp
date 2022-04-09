//
//  BreadDetailView.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/21/22.
//

import SwiftUI

struct ProductDetailView: View {
    
    var product:Product
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {

                // MARK: Bread Brazilian Title
                Text(product.brazilName)
                    .bold()
                    .padding(.top, 20)
                    .font(.largeTitle)
                
                // MARK: Bread English Title
                Text("\(product.name)")
                    .font(.title)
                
                // MARK: Bread Image
                Image(product.name)
                   .resizable()
                   .scaledToFill()
                
                // MARK: Bread Description
                Text("\(product.description)")
                    .font(.headline)
                    .padding([.bottom,.top], 5)
                
                // MARK: Bread Nutrition
                
                VStack (alignment: .leading) {
                    
                    Text("Nutrition Facts")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    HStack {
                        Text("\(product.totalServings) servings per container")
                            .font(.title2)
                    }
                    
                    HStack {
                        Text("Serving Size")
                            .fontWeight(.bold)
                        Spacer()
                        Text("1 slice (\(product.servingSize) g / \(String(format: "%.2f", Double(product.servingSize) * 0.0352)) Oz)")
                            .fontWeight(.bold)
                    }
                    Rectangle()
                        .frame(height: 20.0)
                        .padding(.top, -5)
                    
                    Text("Amount per serving")
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Text("Calories")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                        Spacer()
                        Text("\(product.calories)")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                    }
                        
                    
                    Rectangle()
                        .frame(height: 10.0)
                        .padding(.top, -20)
                    
                    HStack {
                        Spacer()
                        Text("% Daily Value *")
                            .fontWeight(.semibold)
                    }
                    .padding(.top, -10)
                    
                    
                    Group {
                        
                        HStack {
                            Text("Total Fat")
                                .fontWeight(.bold)
                            Text("\(product.totalFat)g")
                            Spacer()
                            Text("\(String(format: "%.0f", Double(product.totalFat) * 100 / 78)) %")
                        }
                        
                        HStack {
                            Text("Saturated Fat")
                            Text("\(product.saturatedFat)g")
                            Spacer()
                            Text("\(String(format: "%.0f", Double(product.saturatedFat) * 100 / 20)) %")
                        }
                        .padding(.leading, 20)
                        
                        HStack {
                            Text("Cholesterol")
                                .fontWeight(.bold)
                            Text("\(product.cholesterol)mg")
                            Spacer()
                            Text("\(String(format: "%.0f", Double(product.cholesterol) * 100 / 300)) %")
                        }
                        
                        HStack {
                            Text("Sodium")
                                .fontWeight(.bold)
                            Text("\(product.sodium)mg")
                            Spacer()
                            Text("\(String(format: "%.0f", Double(product.sodium) * 100 / 2300)) %")
                        }
                        HStack {
                            Text("Total Carbohydrate")
                                .fontWeight(.bold)
                            Text("\(product.carbohydrates)g")
                            Spacer()
                            Text("\(String(format: "%.0f", Double(product.carbohydrates) * 100 / 275)) %")
                        }
                        
                        HStack {
                            Text("Dietary Fiber")
                            Text("\(product.fiber)g")
                            Spacer()
                            Text("\(String(format: "%.0f", Double(product.fiber) * 100 / 28)) %")
                        }
                        .padding(.leading, 20)
                        
                        HStack {
                            Text("Total Sugar")
                            Text("\(product.totalSugar)g")
                        }
                        .padding(.leading, 20)
                        
                        HStack {
                            Text("Added Sugar")
                            Text("\(product.addedSugar)g")
                            Spacer()
                            Text("\(String(format: "%.0f", Double(product.addedSugar) * 100 / 50)) %")
                        }
                        .padding(.leading, 40)
                        
                        HStack {
                            Text("Protein")
                                .fontWeight(.bold)
                            Text("\(product.protein)g")
                            Spacer()
                            Text("\(String(format: "%.0f", Double(product.protein) * 100 / 50)) %")
                        }
                        
                        Group {
                            
                            Rectangle()
                                .frame(height: 15.0)
                                .padding(.top, -10)
                            
                            HStack {
                                Text("Vitamin D")
                                Text("\(product.vitaminD)mcg")
                                Spacer()
                                Text("\(String(format: "%.0f", Double(product.vitaminD) * 100 / 20)) %")
                            }
                            
                            HStack {
                                Text("Calcium")
                                Text("\(product.calcium)mg")
                                Spacer()
                                Text("\(String(format: "%.0f", Double(product.calcium) * 100 / 1300)) %")
                            }
                            
                            HStack {
                                Text("Iron")
                                Text("\(product.iron)mg")
                                Spacer()
                                Text("\(String(format: "%.0f", Double(product.iron) * 100 / 18)) %")
                            }
                            
                            HStack {
                                Text("Potassium")
                                Text("\(product.potassium)mg")
                                Spacer()
                                Text("\(String(format: "%.0f", Double(product.potassium) * 100 / 4700)) %")
                            }
                            
                            Rectangle()
                                .frame(height: 10.0)
                                .padding(.top, -5)
                            
                            
                        }
                        
                    }
                    .font(.title2)
                    
                    Text("* The % Daily Value (DV) tells you how much a nutrient in a serving of food contributes to a daily diet. 2,000 calories a day is used for the general nutrition advice.")
                        .font(.caption)
                    
                }
                
                
                


                // MARK: Ingredients
                VStack(alignment: .leading) {
                    
                Text("Ingredients")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding([.top], 5)
                    
                    let nameString = product.ingredients.joined(separator: ", ")
                    
                    Text(nameString)
                        .font(.title2)
                }
            }
        }
        .padding([.leading, .trailing], 30)
    }
}

struct BreadDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //Create Dummy Recipe and pass into detail view so that we can see a preview
        
        let model = ProductModel()
        
        ProductDetailView(product: model.products[0])
    }
}
