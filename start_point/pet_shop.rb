# Pet Shop Name
def pet_shop_name(pet_shop)
    return pet_shop[:name]
end

# Total Cash in pet shop
def total_cash(pet_shop)
    return pet_shop[:admin][:total_cash]
end

#Add or remove cash
def add_or_remove_cash(pet_shop, value)
    return pet_shop[:admin][:total_cash] += value
end

# Pets sold
def pets_sold(pet_shop)
    return pet_shop[:admin][:pets_sold]
end


# Increase pets sold
def increase_pets_sold(pet_shop, items_sold)
    return pet_shop[:admin][:pets_sold] += items_sold
end


# # stock count
def stock_count(pet_shop)
 return pet_shop[:pets].size
end

# Find pets by breed
def pets_by_breed(pet_shop, breed)
    pets_found_by_breed = []
    for pet in pet_shop[:pets] do
        if pet[:breed] == breed
            pets_found_by_breed << pet
        end
    end
    return pets_found_by_breed
end


# Find pet by name
def find_pet_by_name(pet_shop, pet_name)
    for pet in pet_shop[:pets]
       return pet if (pet[:name] == pet_name)
    end
    return nil
end


# Remove pet by name
def remove_pet_by_name(pet_shop, pet_name)
    for pet in pet_shop[:pets]
        pet_shop[:pets].delete_if { |pet| pet[:name] == pet_name}
    end
    return pet_shop
end

# Add a pet to stock
def add_pet_to_stock (pet_shop, new_pet)
    return pet_shop[:pets] << new_pet
end

#  Check customers cash
def customer_cash(customers)
    return customers[:cash]
end

# remove customers cash
def remove_customer_cash(customers, bill_value)
    return customers[:cash] -= bill_value
end

# calculate customer pet count
def customer_pet_count(customers)
    return customers[:pets].count
end

# Add pet to customer
def add_pet_to_customer(customer, new_pet)
    return customer[:pets] << new_pet
end

# ---- OPTIONAL TASKS ---- #

