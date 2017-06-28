class CreateCompanyInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :company_informations do |t|
      t.string :Sector
      t.string :BusinessActivity
      t.string :ReasonPartner
      t.string :Address
      t.string :Unity
      t.string :City
      t.string :State
      t.string :Cp
      t.string :Phone
      t.string :CellPhone
      t.string :Email
      t.string :Website
      t.string :Boss
      t.string :Area
      t.string :PrimarySector
      t.string :SecondarySector
      t.string :ThirdSector
      t.string :LevelStudy
      t.string :UpdateCourses
      t.string :Postgraduate
      t.string :AreaPostgraduate
      t.string :SocialOrganizations
      t.string :Which
      t.string :Committee
      t.string :Recommendation

      t.timestamps
    end
  end
end
