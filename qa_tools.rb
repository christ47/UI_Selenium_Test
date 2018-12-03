require 'selenium-webdriver'

class SeleniumQAToolsForm

    def initialize
      @chrome_driver = Selenium::WebDriver.for :chrome
      @practise_form_url = 'http://toolsqa.com/automation-practice-form/'
      @first_name_field_name = 'firstname'
      @last_name_field_name = 'lastname'
      @value = 3
      @proffession_number = 0
    end

    def current_url
      @chrome_driver.current_url
    end

    def visit_practise_form
      @chrome_driver.get(@practise_form_url)
    end
    def input_first_name_field(text)
      @chrome_driver.find_element(:name, @first_name_field_name).send_keys(text)
    end

    def input_last_name_field(text)
        @chrome_driver.find_element(:name, @last_name_field_name).send_keys(text)
    end

    def get_firstname_field_value
        @chrome_driver.find_element(:name, @first_name_field_name).attribute('value')
    end

    def get_lastname_field_value
        @chrome_driver.find_element(:name, @last_name_field_name).attribute('value')
    end

    def input_date_field(date)
      @chrome_driver.find_element(:id, 'datepicker').send_keys(date)
    end

    def get_date_field
        @chrome_driver.find_element(:id, 'datepicker').attribute('value')
    end

    def input_male_gender
        @chrome_driver.find_element(:id, "sex-0").click
    end

    def get_male_gender
      @chrome_driver.find_element(:id, "sex-0").selected?
    end

    def input_female_gender
      @chrome_driver.find_element(:id, "sex-1").click
    end

    def get_female_gender
      @chrome_driver.find_element(:id, "sex-1").selected?
    end

    def input_years_of_experience
      @chrome_driver.find_element(:id, "exp-#{@value}").click
    end

    def get_years_of_experience
      @chrome_driver.find_element(:id, "exp-#{@value}").selected?
    end

    def input_profession
      @chrome_driver.find_element(:id, "profession-#{@proffession_number}").click
    end

    def get_profession
      @chrome_driver.find_element(:id, "profession-#{@proffession_number}").selected?
    end

    def input_automation_tool
        @chrome_driver.find_element(:id, 'tool-0').click
    end

    def get_automation_tool
      @chrome_driver.find_element(:id, "tool-0").selected?
    end

    def input_continent
      dropDownMenu = @chrome_driver.find_element(:id, "continents")
      option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
      option.select_by(:text, 'Asia')
    end

    def get_continent
      @chrome_driver.find_element(:id, "continents").text.include?('Asia')
    end

    def input_selenium_commands
      dropDownMenu2 = @chrome_driver.find_element(:id, "selenium_commands")
      option = Selenium::WebDriver::Support::Select.new(dropDownMenu2)
      option.select_by(:text, 'Wait Commands')
    end

    def get_selenium_commands
      @chrome_driver.find_element(:id, "selenium_commands").text.include?('Wait Commands')
    end
end
