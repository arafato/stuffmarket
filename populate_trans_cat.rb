seeds = Array.new

seed = Array.new
seed.push(0)

seeds.push(seed)


while !seeds.empty?

  newSeeds = Array.new

  seeds.each do |seed|
    
    latestCategory = seed[-1]
    
    succs = Category.find_by_sql(["select * from categories c where c.parent_id = ?", latestCategory ])
    
    succs.each do |category|
      
      newSeed = seed.clone
      newSeed.push(category.id)
      newSeeds.push(newSeed)
      
      newSeed.each do |preID|
        
        trans_cat = TransCat.new
        trans_cat.cat_id = category.id
        trans_cat.ancestor_id = preID
        trans_cat.save 
        
      end

    end 
    
  end
  
  seeds = newSeeds
    
end
  