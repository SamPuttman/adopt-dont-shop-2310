class Application < ApplicationRecord
  validates :applicant_name, 
            :address, 
            :city, 
            :state, 
            :zip_code, 
            :description, presence: true
 
  has_many :pet_applications
  has_many :pets, through: :pet_applications
  
  def search_pets_by_name(name)
    Pet.search_by_name(name)
  end

  def adopt_pet(id)
    pet = Pet.find(id)
    self.pets << pet
  end

  def submit_application
    update(application_status: 'Pending')
  end

end