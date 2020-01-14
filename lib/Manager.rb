class Manager
    attr_reader :name, :department, :age
    @@all = []
    def initialize(name, department, age)
        @name = name 
        @department = department
        @age = age
        @@all << self
        @employee = []
    end

    def name
        @name
    end

    def department
        @department
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        @employee << New.employee(name, salary)
    end

    def self.all_departments
        all.collect{|managers| managers.department}
    end

    def self.average_age
        all.collect{|managers| managers.age}.inject{|a,b| a + b}.to_f/all.collect{|managers| managers.age}.size
    end
end
