
describe 'testing the demos registration page' do

  before(:all) do
    @driver_class = SeleniumQAToolsForm.new
    @driver_class.visit_practise_form
    @wait = Selenium::WebDriver::Wait.new(timeout: 1)
    @name = 'Leroy'
    @lastname = 'Christie'
    @gender = "female"
    @proffession_number = 0
  end

  it "should land on the registration page" do
    expect(@driver_class.current_url).to eq 'http://toolsqa.com/automation-practice-form/'
  end

  it "should accept a first name" do
    @driver_class.input_first_name_field(@name)
    expect(@driver_class.get_firstname_field_value).to eq @name
  end

  it "should accept last names" do
    @driver_class.input_last_name_field(@lastname)
    expect(@driver_class.get_lastname_field_value).to eq @lastname
  end

  it "should accept valid dates" do
    @driver_class.input_date_field('21-11-2017')
    expect(@driver_class.get_date_field).to eq '21-11-2017'
  end

  # it "should have a valid date" do
  #   expect(@driver_class.valid_date?(2017-11-20)).to eq true
  # end
  it "should accept Male being set as a gender" do
    @driver_class.input_male_gender
    expect(@driver_class.get_male_gender).to eq true
  end

  it "should accept Female being set as a gender" do
    @driver_class.input_female_gender
    expect(@driver_class.get_female_gender).to eq true
  end

  it "should accept years of experience" do
    @driver_class.input_years_of_experience
    expect(@driver_class.get_years_of_experience).to eq true
  end

  it "should accept type of profession" do
    @driver_class.input_profession
    expect(@driver_class.get_profession).to eq true
  end

  it "should accept automation tools" do
    @driver_class.input_automation_tool
    expect(@driver_class.get_automation_tool).to eq true
  end

  it "should accept continents from the dropwdown list" do
    @driver_class.input_continent
    expect(@driver_class.get_continent).to eq true
  end

  it "should accpet Selenium Commands" do
    @driver_class.input_selenium_commands
    expect(@driver_class.get_selenium_commands).to eq true
  end
end
