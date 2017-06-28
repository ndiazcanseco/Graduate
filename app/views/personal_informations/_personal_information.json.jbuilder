json.extract! personal_information, :id, :FirstName, :FirstLastName, :SecondLastName, :ControlNumber, :Birthdate, :Curp, :Phone, :Address, :Unity, :City, :State, :Profession, :Specialty, :Titulo, :Language, :Computing, :Monthandyears, :created_at, :updated_at
json.url personal_information_url(personal_information, format: :json)
