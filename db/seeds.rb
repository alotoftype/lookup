# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

creat_specialties =['Ophthalmology','Internal Medicine','Pediatrics','Social Work','Anesthesiology','Rheumatology','Podiatry','Dermatology','Cardiovascular Disease','Surgery - Vascular','Orthopedic Surgery','Family Medicine','Obstetrics/Gynecology','Medical Oncology','Orthopedics','Gastroenterology','Gynecology (No OB)','Surgery - General','Neurology','Cardiology','Allergy/Immunology','Hematology/Oncology','Nephrology','Pulmonary Medicine','Endocrinology','Surgery - Cardiovascular & Thoracic','Otolaryngology (ENT)','Surgery, Hand','Pediatric Endocrinology','Hematology','Physical Medicine & Rehabilitation','Urology','Interventional Cardiology','Allergy','Sleep Medicine','Podiatric Surgery','Pulmonary Disease','Surgery - Plastic','Pain Management','Dietetics - Nutrition','Physiatry']

creat_specialties.each { |c| Specialty.create(:name => c)}

create_services = ['Bone Density' 'Accredited Endoscopy Suite', 'EmblemHealth Neighborhood Care', 'Flouroscopy','Infusion Suite',
                   'Laboratory','MRI','Optometry','Pharmacy','Physical Therapy','Sleep Center','Sonogram/Ultrasound','Ultrasound','X-Ray']

create_services.each {|s| Service.create(:name => s)}
